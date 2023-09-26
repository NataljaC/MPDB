# Load the libraries
library(RMariaDB)
library(DBI)
library(RMySQL)
library(dplyr)

# Define database connection details
host <- "db-mysql-nyc1-90791-do-user-14694805-0.b.db.ondigitalocean.com"
dbname <- "marpoll"
port <- "25060"
user <- "nick"
pass <- "AVNS_2OIiaAGOqBnUMUsVVFo"

# Create a database connection
con <- dbConnect(
  MariaDB(),
  dbname = dbname,
  host = host,
  port = port,
  user = user,
  password = pass
)

# Read in "colors" table
colors <- read.csv("/Users/nick_leong/Downloads/Copy of Copy of Image Data Sharing (Responses) - Form Responses 1.csv", stringsAsFactors = FALSE)
colors <- colors %>%
  select(Color)
colors <- colors %>%
  mutate(IDColor = row_number())

dbWriteTable(con, name = "colors", value = colors, append = TRUE, row.names = FALSE)

# Read in "contributors" table
contributors <- read.csv("/Users/nick_leong/Downloads/Copy of Copy of Image Data Sharing (Responses) - Form Responses 1.csv", stringsAsFactors = FALSE)
contributors <- contributors %>%
  select(Fisrt_name, Last_name)
contributors <- contributors %>%
  mutate(IDContributor = row_number())
contributors <- contributors[contributors$IDContributor ,]

dbWriteTable(con, name = "contributor", value = contributors, append = TRUE, row.names = FALSE)

# Read in "particles" table
particles <- read.csv("/Users/nick_leong/Downloads/Copy of Copy of Image Data Sharing (Responses) - Form Responses 1.csv",na.strings = "",stringsAsFactors = FALSE)
particles <- particles %>%
  select(Shape, Size_fraction, Categorised_result)
particles$Categorised_result 
particles <- particles %>%
  mutate(IDParticles = row_number())
particles <- particles %>%
  mutate(Preferred_method = row_number())
particles <- particles %>%
  mutate(Analyst = contributors$IDContributor)
particles <- particles %>%
  mutate(Colour = colors$Color)
particles$Amount <- rep(1, nrow(particles)) 
particles$Sample <-paste("Sample", 1:nrow(data))
particles <- particles[particles$IDParticles < 26,]

dbWriteTable(con, name = "particles", value = particles, append = TRUE, row.names = FALSE)




dbDisconnect(con)

