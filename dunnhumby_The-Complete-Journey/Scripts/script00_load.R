library(data.table)
library(magrittr)

data.path <- file.path(
	"~", "Data", "Archive", "Dunhumby",
	"dunnhumby_The-Complete-Journey", "dunnhumby - The Complete Journey CSV"
)

data.files <- file.path(data.path) %>% dir()

# Transactions ####

trans.path <- file.path(data.path, data.files[8])

trans.dt <- fread(trans.path)

# Causal data ####

causal.path <- file.path(data.path, data.files[3])

causal.dt <- fread(causal.path)
