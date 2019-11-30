##install.packages("shiny")

library(shiny)
library(rstudioapi)

# Get the current path of this file
current_path <- getActiveDocumentContext()$path 
# The next line sets the working directory to the relevant path
setwd(dirname(current_path ))
# We can make sure we are in the right directory
print( getwd() )

## Shiny lesson 1
runApp("App-1")

## Shiny lesson 2
runApp("App-2")

## Shiny lesson 3
runApp("App-3")

## Shiny lesson 4
runApp("App-4")

## Shiny lesson 5
install.packages(c("maps", "mapproj"))
library(maps)
library(mapproj)
source("census-app/helpers.R")
counties <- readRDS("census-app/data/counties.rds")
percent_map(counties$white, "darkgreen", "% White")
runApp("census-app")

## Shiny lesson 6
install.packages("quantmod")
runApp("stockVis")

## Shiny lesson 7
runGitHub( "Big-Data-Visualization", "oussama-talaoui", subdir = "/stockVis")

## Shiny Example
devtools::install_github("jcheng5/googleCharts")
runGitHub( "Big-Data-Visualization", "oussama-talaoui", subdir = "/shiny-example")