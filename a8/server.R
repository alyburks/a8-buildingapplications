
library(shiny)
library(plotly)
data("iris")

shinyServer(function(input, output) {
  
  #Makes scatterplot
  output$scatterplot <- renderPlotly({
    selection <- (paste0(input$column, '.Length'))
    selection2 <- (paste0(input$column, '.Width'))
    plot_ly(data = iris, 
            type="scatter", 
            marker = list(color = input$color), 
            mode = "markers" , 
            x = eval(parse(text = selection)), 
            y=eval(parse(text = selection2))
            ) %>% layout(xaxis = list(title = 'Length'), yaxis = list(title = 'Width'))
  })
  
})
