#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("column", label = h3("What do you want to see?"), 
                  choices = list("Petal" = 'Petal', "Sepal" = 'Sepal'), selected = "Petal"),
      
      radioButtons("color", label = "Color", 
                   choices = list("Green" = 'green', "Blue" = 'blue', "Red" = 'red'), selected = "blue") 
                   
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotlyOutput("scatterplot")
    )
  )
))
