library(shiny)

shinyUI(fluidPage(
  titlePanel(title = "introduction to shiny app layout  this is title space"),
  sidebarLayout(
    sidebarPanel("this is sidebarpanel"),
    mainPanel ("this is mainpanel")
    
  )
  
  
))

