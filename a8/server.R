#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
data("iris")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$scatterplot <- renderPlotly({
    
    selection <- (paste0(input$column, '.Length'))
    selection2 <- (paste0(input$column, '.Width'))
    plot_ly(data = iris, type="scatter", marker = list(color = input$color), mode = "markers" , x = selection, y = selection2)
    
    
    
  })
  
})
