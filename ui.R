# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Quakes in Fiji"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(p("View the distribution of the data by using the slider"),
      sliderInput("myMag",
                  "bins",
                  min = 1,
                  max = 20,
                  value = 5)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))

