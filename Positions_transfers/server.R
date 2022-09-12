#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  Player = reactive(input$Player)
  Season = reactive(input$Season)
  Team = reactive(input$Team)
  #print(Player)
  
    player <- reactive(season_lineups %>% filter(playerName == Player(), 
                                                 year == Season(),
                                                 school == Team()))
    #data <- season_lineups %>% filter(playerName == Player)
  
    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        #x    <- faithful[, 2]
        #x <- newdata$Appearances_DH
        #bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        #hist(x, breaks = bins, col = 'darkgray', border = 'white',
        #hist(x, breaks = 3, col = 'darkgray', border='white',
            #xlab = 'Waiting time to next eruption (in mins)',
            #main = 'Histogram of waiting times')
        barplot(table(player()$position))
             

    })

})
