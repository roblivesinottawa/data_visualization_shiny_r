
library(shiny)
library(ggplot2)
library(gridExtra)


shinyServer(function(input, output) {

    output$p1 <- renderPlot({
        ggplot(input$data, aes(x=x, y=y)) +
        geom_point(size=2) +
        theme_bw()
     
      })
    output$p2 <- renderPlot({
      # Box Plot code goes here 

      })
    output$p3 <- renderPlot({
      # Scatter Plot code goes here
    })
    output$p4 <- renderPlot({
      # Pie Chart code goes here
    })
})



 