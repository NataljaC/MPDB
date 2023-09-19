# Load the libraries
library(RMariaDB)
library(RMySQL)
library(dplyr)

sql_dump <- readLines("micropoll-.sql")

# Define database connection details
host <- "127.0.0.1"
dbname <- "micropoll"
user <- "root"
pass <- "Mooreplastic1010!"

# Create a database connection
con <- dbConnect(
  MariaDB(),
  dbname = dbname,
  host = host,
  user = user,
  password = pass
)


# Read in data
data <- read.csv("image_explorer_example_data1.csv")
data <- data %>%
  select(-PolymerTypeOfParticle, -PolymerTypeOfParticleOriginal, -ColorOriginal, -MorphologyOriginal)

# Rename the columns to match sql column

# Particles table
colnames(data)[colnames(data) == "ImageType"] <- "IDParticles"
colnames(data)[colnames(data) == "ImageFile"] <- "Sample"
colnames(data)[colnames(data) == "ResearcherName"] <- "Analyst"
colnames(data)[colnames(data) == "AnalysisDate"] <- "Analysis_date"
colnames(data)[colnames(data) == "Color"] <- "Colour"
colnames(data)[colnames(data) == "Morphology"] <- "Shape"
colnames(data)[colnames(data) == "SizeOfParticle"] <- "Size_1_[µm]"

# Contributor table
colnames(data)[colnames(data) == "Affiliation"] <- "Institution"
colnames(data)[colnames(data) == "Citation"] <- "IDContributor"

# Equipment table
colnames(data)[colnames(data) == "InstrumentName"] <- "Eq_Name"
colnames(data)[colnames(data) == "Magnification"] <- "Eq_Specification"

# Size Fraction table
colnames(data)[colnames(data) == "SizeDimension"] <- "Size_category"

# Methods table
colnames(data)[colnames(data) == "MicroplasticImages"] <- "Images"

# Define SQL statements for each table
sql_insert_particles <- "INSERT INTO particles (IDParticles, Sample, Preferred_method, Arrival_date, Analysis_date, Amount, Analyst, Size_fraction, Colour, Shape, `Size_1_[µm]`, `Size_2_[µm]`, `Size_3_[µm]`, Categorised_result, Indication_paint, Particle_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
sql_insert_contributor <- "INSERT INTO contributor (Institution, IDContributor) VALUES (?, ?)"
sql_insert_equipment <- "INSERT INTO equipment (Eq_Name, Eq_Specification) VALUES (?, ?)"
sql_insert_size <- "INSERT INTO size (Size_category) VALUES (?)"
sql_insert_methods <- "INSERT INTO methods (Images) VALUES (?)"

# Initialize a result variable
result <- TRUE
  
# Execute INSERT statements with data
for (i in 1:nrow(data)) {
  params <- unlist(data[i, ])
  if (!dbExecute(con, sql_insert_particles, params)) {
    result <- FALSE
    break  # Exit the loop on error
  }
  
  if (!dbExecute(con, sql_insert_contributor, params)) {
    result <- FALSE
    break
  }
  
  if (!dbExecute(con, sql_insert_equipment, params)) {
    result <- FALSE
    break
  }
  
  if (!dbExecute(con, sql_insert_size, params)) {
    result <- FALSE
    break
  }
  
  if (!dbExecute(con, sql_insert_methods, params)) {
    result <- FALSE
    break
  }
}

# Close the database connection
tryCatch({
  dbDisconnect(con)
}, error = function(e) {
  cat("Error closing database connection.\n")
})

# Check if data was inserted successfully
if (result) {
  cat("Data was inserted successfully.\n")
} else {
  cat("Error inserting data.\n")
}
