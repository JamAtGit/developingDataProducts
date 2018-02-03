
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# author: JAM
# date : feb 01 2018

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Random walk simulation"),

  # Sidebar with a slider input for number simulation steps
  sidebarLayout(
    sidebarPanel(
      sliderInput("simN",
                  "Number of simulation steps:",
                  min = 10,
                  max = 1000,
                  value = 500),
      actionButton("runButton", "Run!"),
      p("Click the button to run again the simulation.")
    ),
    

    # Show a plot of the generated simulation
    mainPanel(
      plotOutput("mainPlot")
    )
  )
))
