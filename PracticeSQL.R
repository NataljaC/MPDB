# Load the RSQLite package
library(RSQLite)

# Create a sample dataframe (using the iris dataset)
data <- iris

# Define the SQLite database file path
db_file <- "my_database.db"

# Establish a connection to the SQLite database
con <- dbConnect(RSQLite::SQLite(), dbname = db_file)

# Insert the dataframe into a table called "iris_data" in the SQLite database
dbWriteTable(con, "iris_data", data, overwrite = TRUE)

# Close the database connection
dbDisconnect(con)

# Print a message to confirm the insertion
cat("Data inserted successfully into the 'iris_data' table in the SQLite database.\n")

