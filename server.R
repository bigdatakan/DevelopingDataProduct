# server.R

library(quantmod)

shinyServer(function(input, output) {
  
  output$text1 <- renderText({input$symb})

  output$plot <- renderPlot({
    
    data <- getSymbols(input$symb, src='yahoo', from=input$dates[1], to=input$dates[2], auto.assign=FALSE)
                 
    chartSeries(data, theme=chartTheme('white'), type=input$charttype, log.scale=FALSE, TA=NULL)
    
    if (input$sma == TRUE) {
      addSMA(n=as.numeric(input$smaprd))
    } else {
      unsetTA()
    }
    
  })
  
})