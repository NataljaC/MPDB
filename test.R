library(RMySQL)

# Define database connection details
host <- "127.0.0.1"
dbname <- "micropoll"
user <- "nick@mooreplasticresearch.org"
pass <- "Password1!"

# Create a database connection
con <- dbConnect(
  MySQL(),
  dbname = dbname,
  host = host,
  user = user,
  password = pass
)

# Define test data as a data frame
test_data <- data.frame(
  IDParticles = 1,
  Sample = "zsdlzsjf",
  Preferred_method = 3,
  Analyst = 2, 
  Size_fraction = "djfafn", 
  Colour = "blue", 
  Shape = "circle",
  Categorised_result = "aidhasi"
)

# Construct the SQL INSERT statement with values
sql_insert_particles <- paste(
  "INSERT INTO particles (IDParticles, Sample, Preferred_method, Analyst, Size_fraction, Colour, Shape, Categorised_result) VALUES (",
  paste(sapply(test_data, function(x) {
    if (is.character(x)) {
      paste("'", x, "'", sep = "")
    } else {
      as.character(x)
    }
  }), collapse = ", "),
  ")"
)

# Execute the SQL INSERT statement
dbExecute(con, sql_insert_particles)

# Disconnect from the database
dbDisconnect(con)
