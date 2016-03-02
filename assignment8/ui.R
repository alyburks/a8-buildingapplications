
library(shiny)
library(plotly)
library(rsconnect)


shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      #Lets user pick which this want to see
      selectInput("column", label = h3("What do you want to see?"), 
                  choices = list("Petal" = 'Petal', "Sepal" = 'Sepal'), selected = "Petal"),
      #Lets user choose color
      radioButtons("color", label = "Color", 
                   choices = list("Green" = 'green', "Blue" = 'blue', "Red" = 'red'), selected = "blue") 
                   
    ),
    
    # Show a plot of length and width
    mainPanel(
       plotlyOutput("scatterplot")
    )
  )
))
