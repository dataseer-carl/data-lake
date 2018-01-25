library(dplyr)
library(lubridate)

data.dir <- file.path(".", "Fitch_Sovereign Ratings History")

source(file.path(data.dir, "Scripts", "template_fxns.R"))

load(file.path(data.dir, "Data/ref_dir and ratings.RData"))

ratings.df <- readRDS(file.path(data.dir, "Data", "data00_sanitised rating actions.rds"))

# Create period template ####

max.date <- as.Date("2012-08-24") # Last update
end.period <- eoMonth(year(max.date), month(max.date), isWeekday = FALSE)

## Loop

countries.ls <- as.list(unique(ratings.df$Country))

periods.ls <- lapply(
	countries.ls,
	function(temp.country){
		# temp.country <- "Philippines"
		
		test.df <- ratings.df %>% 
			filter(Country == temp.country) %>% 
			arrange(Date)
		
		### Start period
		
		test.min.date <- min(test.df$Date)
		
		start.period <- eoMonth(year(test.min.date), month(test.min.date), isWeekday = FALSE)
		
		periods <- seq.Date(start.period + 1, end.period + 1, by = "month") - 1
			## plus one- minus one used as work around to buggy non-31-day months
		
		entry.idx <- findInterval(periods, test.df$Date)
		
		periods.df <- test.df[entry.idx,] %>% 
			rename(Date.updated = Date) %>% 
			mutate(Month.end = periods) %>% 
			filter(FC.rating.outlook != "Withdrawn") ## Assumes that all "withdrawn" entries are proper
		
		return(periods.df)
	}
)

periods.df <- do.call(bind_rows, periods.ls)

periods.df <- periods.df %>% 
	select(
		Country, Month.end,
		FC.rating.long, FC.rating.short, FC.rating.outlook,
		LC.rating.long, LC.rating.outlook,
		Date.updated
	)

write.csv(
	periods.df,
	file.path(data.dir, "UseCases", "Ratings Migration", "Data", "data00_period rating view.csv"),
	row.names = FALSE
)