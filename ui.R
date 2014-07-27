library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Quote Application"),
  
  sidebarLayout(
    sidebarPanel(
      h3('Information will be collected from Yahoo! Finance.'),
    
      textInput('symb', 'Symbol', 'MSFT'),

      br(),
      
      dateRangeInput('dates', 'Date Range', start='2014-01-01', end=as.character(Sys.Date())),
      
      selectInput('charttype', label='Chart Type', choices=c('candle', 'line'), selected='candle'),

      br(),

      checkboxInput('sma', 'Simple Moving Average', value=FALSE),
      
      numericInput('smaprd', 'Period (Days)', 10),

      br(),
      
      actionButton('get', 'Refresh Chart')
      
    ),
    
    mainPanel(
      h3(textOutput('text1')),
    
      plotOutput("plot")
    )
  )
))