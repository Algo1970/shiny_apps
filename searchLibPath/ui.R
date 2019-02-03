

library(shiny)

shinyUI(fluidPage(
  titlePanel("searchLibPath"),
  
  sidebarLayout(
    sidebarPanel(
      tableOutput("libpath"),
      numericInput("n",
                    label = "select number : ",
                    value = 1,
                    step=1),
      actionButton("action", label = "Action")
    ),
    
    mainPanel(
      tableOutput("view")
    )
  )
))
