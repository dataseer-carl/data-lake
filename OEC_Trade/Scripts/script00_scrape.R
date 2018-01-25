library(jsonlite)
library(dplyr)
library(magrittr)

oec.url <- "https://atlas.media.mit.edu"

url.ls <- list(
	Countries = file.path(oec.url, "attr/country/"),
	Products = file.path(oec.url, "attr/sitc/")
)

## Create function to prep API query
oec.sitc <- function(
	origin, destination = "show",
	classification = "sitc", trade_flow = "export", year = "2015", product = "all"
	){
	## only required argument is ORIGIN
	## See readme.md for description and accepted values for each argument
	
	## OEC URL
	oec.url <- "https://atlas.media.mit.edu"
	api.query <- file.path(oec.url, classification, trade_flow, year, origin, destination, product)
	
	## API QUERY
	return(api.query)
}


# Reference tables ####

products.ls <- fromJSON(url.ls$Products)
products.df <- products.ls$data 

countries.ls <- fromJSON(url.ls$Countries)
countries.df <- countries.ls$data

save(countries.df, products.df, file = file.path(".", "OEC_Trade", "Raw", "raw_country and product references as of 20180123.RData"))

load(file.path(".", "OEC_Trade", "Data", "raw_country and product references as of 20180123.RData"))
write.csv(countries.df, file.path(".", "OEC_Trade", "Data", "raw_reference country as of 20180123.csv"), row.names = FALSE)
write.csv(products.df, file.path(".", "OEC_Trade", "Data", "raw_reference product as of 20180123.csv"), row.names = FALSE)

## Isolate non-countries
country.df <- countries.df %>% 
	filter(!is.na(display_id)) ## Un-queriable
	# !Unsanitised ----
	# May still include non-countries (e.g. Western Sahara)

## Prep
countryID.ls <- country.df$display_id %>% as.list()
names(countryID.ls) <- country.df$name

## Generate queries for each country as origin
queries.ls <- lapply(countryID.ls, oec.sitc, year = "2010.2015") ## elements will be fed into first argument

## Execute queries
data.ls <- lapply(queries.ls, fromJSON)

## Collate into table
data.df <- data.ls %>% 
	lapply("[[", 1) %>% # Remove from root list element "data"
	do.call(bind_rows, .) # Collate data.frames

saveRDS(data.df, file.path(".", "OEC_Trade", "Data", "raw_scraped json from2010to2015 as of 20180123.rds"))
write.csv(data.df, file.path(".", "OEC_Trade", "Data", "raw_data scraped json from2010to2015 as of 20180123.csv"), row.names = FALSE)
