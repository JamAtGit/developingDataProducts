
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
#author: JAM
#date : feb-01 2018
# this app calculates and plots a 2D random walk, given a number of steps.

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  generateValues<-function(N){
    xdis = rnorm(N, 0 ,1);
    ydis = rnorm(N, 0 ,1);
    xdis = cumsum(xdis);
    ydis = cumsum(ydis);
    values <- data.frame(xdis,ydis);
  }
  
  

  output$mainPlot <- renderPlot({
    input$runButton
    N<- input$simN
    values<-generateValues(N)
    plot(values$xdis,values$ydis, type="l", main="Random walk in 2 D", xlab="X distance", ylab="Y distance")
  })

})
