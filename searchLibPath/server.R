library(shiny)

shinyServer(function(input, output) {
  p = eventReactive(input$action, {
    path = installed.packages()[,"LibPath"]
    text2 = paste(names(path[path == .libPaths()[input$n]]))
    data.frame(Rpackage_name = text2)
  })
  # output$sample_text <- renderText({
  #   p()
  # })
  output$view <- renderTable({
    p()
  })
  output$libpath <- renderTable({
    data.frame(n = 1:length(.libPaths()), library_path = .libPaths())
  })
  
})


