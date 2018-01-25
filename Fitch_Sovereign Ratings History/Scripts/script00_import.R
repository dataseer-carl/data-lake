library(readxl)
library(dplyr)
library(stringr)

data.dir <- file.path(".", "Fitch_Sovereign Ratings History")

source(file.path(data.dir, "Scripts", "template_fxns.R"))

# Load ####

data.path <- file.path(data.dir, "Raw", "sovereign_ratings_history.xls")

ratings.raw <- read_excel(
	data.path, sheet = "Sovereign", range = "A6:G988", 
	col_names = c(
		"Country", "Date",
		"FC.rating.long", "FC.rating.short", "FC.rating.outlook",
		"LC.rating.long", "LC.rating.outlook"
	)
)
## Ratings' font colors have meaning:
# > 1) blue = positive rating action, red = negative rating action.

## Look at unique values
lapply(ratings.raw, unqSort)

# Rating levels ####

longterm.rating.levels <- c(
	"AAA",
	"AA+", "AA", "AA-",
	"A+", "A", "A-",
	"BBB+", "BBB", "BBB-",
	# Investment grade
	"BB+", "BB", "BB-",
	"B+", "B", "B-",
	"CCC+", "CCC", "CCC-",
	"CC",
	"C",
	# Default
	"RD",
	"D"
)
	## DDD, DD, withdrawn, -, i
	# LC.rating.long == "DDD" : Argentina, Dominican Republic, Uruguay ['RD'?]
	# FC.rating.long == "DDD" : Argentina, Dominican Republic, Uruguay ['RD'?]
	# FC.rating.long == "DD" : Moldova 2002 ['RD'?]
	## Default ratings were DDD/DD/D until 2005, RD and D thereafter
	# FC.rating.long == "withdrawn" : Benin 2012 [no longer rated by Fitch]
	# LC.rating.long == "withdrawn" : Benin 2012 [no longer rated by Fitch]
	# FC.rating.long == "-" : Gambia, Iran, Libya, Malawi, Mali, Moldova, Papua New Guinea, Turkmenistan
	# LC.rating.long == "-" : a lot [suspension?]
	# LC.rating.long == "i" : South Africa 2008 [A?] ## http://www.treasury.gov.za/comm_media/press/2008/2008111001.pdf
	## Notes: if -, missing until next rating change; could be rating suspension or pre-assignment
	## Notes: if withdrawn, missing until present

shortterm.rating.levels <- c(
	"F1+", "F1",
	"F2",
	"F3",
	"B+", "B",
	"C",
	"D"
	# withdrawn, -
)

save(
	data.dir, longterm.rating.levels, shortterm.rating.levels,
	file = file.path(data.dir, "Data/ref_dir and ratings.RData")
)

# Sanitise ####

## Dup rating change entries
ratings.raw %>% 
	group_by(Country, Date) %>% 
	summarise(Entries = n()) %>% 
	filter(Entries > 1) %>% # More than one entry for Cyprus, Jamaica, and Libya
  select(-Entries) %>% 
  left_join(ratings.raw) %>% View()
	## Cyprus 2007-07-12: Rating Watch negative
	## Jamaica 2010-02-03: RD
	## General election for new government on Feb 15
	## > http://jamaica-gleaner.com/gleaner/20100107/int/int7.html
	## Libya 2011-04-13: -
	## Libyan civil war
	## > https://en.wikipedia.org/wiki/Timeline_of_the_2011_Libyan_Civil_War

## Remove duplicate rating change entries
ratings.unq <- ratings.raw %>% 
	mutate(Date = as.Date(Date)) %>% 
	## Remove deprecated rows
	filter(
		(Country != "Cyprus") | (Date != "2007-07-12") | (FC.rating.outlook != "stable")
	) %>% 
	filter(
		(Country != "Jamaica") | (Date != "2010-02-03") | (FC.rating.long != "CCC")
	) %>% 
	filter(
		(Country != "Libya") | (Date != "2011-04-13") | (FC.rating.long != "B")
	)
	
## Sanitise rating levels
ratings.df <- ratings.unq %>% 
	mutate(
		FC.rating.long = FC.rating.long %>% 
			str_replace_all(
				c(
					"^D{2,}$" = "RD" # DDD and DD to RD
				)
			),
		LC.rating.long = LC.rating.long %>% 
			str_replace_all(
				c(
					"^D{2,}$" = "RD", # DDD and DD to RD
					"^i$" = "A" # Assume affirmation of current rating
				)
			),
		FC.rating.short = FC.rating.short %>% 
			str_replace_all(
				c(
					"f(?=[[:digit:]])" = "F" # Correct lower-case F's
				)
			),
		FC.rating.outlook = str_to_title(FC.rating.outlook),
		LC.rating.outlook = str_to_title(LC.rating.outlook)
	)
	## Ratings not converted to factors yet b/c of "suspended" and "withdrawn"

## Check unique values
lapply(ratings.df, unqSort)

saveRDS(ratings.df, data.path <- file.path(data.dir, "Data", "data00_sanitised rating actions.rds"))
write.csv(ratings.df, data.path <- file.path(data.dir, "Data", "data00_sanitised rating actions.csv"), row.names = FALSE)
