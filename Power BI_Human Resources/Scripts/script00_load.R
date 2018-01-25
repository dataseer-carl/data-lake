library(data.table)

unqSort <- function(x) sort(unique(x))

dir.path <- file.path(".", "Power BI_Human Resources")

# Load ####
data.path <- file.path(dir.path, "Raw", "Employee.tsv")

employees.dt <- fread(data.path)

## Get unique values
lapply(employees.dt, unqSort)
