##install.packages("shiny")

library(shiny)
library(rstudioapi)

# Get the current path of this file
current_path <- getActiveDocumentContext()$path 
# The next line sets the working directory to the relevant path
setwd(dirname(current_path ))
# We can make sure we are in the right directory
print( getwd() )

##LESSON-1
runApp("App-1")

##LESSON-2
runApp("App-2")

##LESSON-3
runApp("App-3")

##LESSON-4
runApp("App-4")

##LESSON-5
install.packages(c("maps", "mapproj"))
library(maps)
library(mapproj)
source("census-app/helpers.R")
counties <- readRDS("census-app/data/counties.rds")
percent_map(counties$white, "darkgreen", "% White")
runApp("census-app")

##LESSON-6
install.packages("quantmod")
runApp("stockVis")
