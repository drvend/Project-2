
library(tidyr)

library(rmarkdown)

daysoftheweek <- c("monday","tuesday","wednesday","thursday","friday", "saturday", "sunday")

outputfilenames <- paste0(daysoftheweek, ".html")

#create a list for each team with just the team name parameter
params = lapply(daysoftheweek, FUN = function(x){list(day = x)})

#put into a data frame 
reports <- tibble(outputfilenames, params)

apply(reports, MARGIN = 1,
      FUN = function(day){
        render(input = "C:/Users/drven/Documents/ST 558/Project-2/ONPReport.Rmd", output_file = day[[1]], params = day[[2]])
      })
