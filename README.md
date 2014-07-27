Shiny Application and Reproducible Pitch
=================================================================================

Repository for Course Project for Developing Data Products on Coursera

* [Background](#Background)
* [Shiny App](#Shiny-App)
* [Instruction](#Instruction)

#Background

####Your Shiny Application


Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.

1. Deploy the application on Rstudio's shiny server
2. Share the application link by pasting it into the text box below
3. Share your server.R and ui.R code on github

The application must include the following:

1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself. Do not post to an external link.

The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.


#Shiny App

####Stock Quote Application

This Shiny application is a simple stock analysis application. It allows end users to input a stock symbol and a date range of interest. It then collects stock quote data from Yahoo! Finance and renders a price chart on the right. Two chart types are provided for end users, candlestick or line. In addition, a basic technical analysis tool, simple moving average, with configurable number of days as the period parameter is provided. end users may simply tick the checkbox to show the simple moving average, or untick the checkbox to hide it.

The following is a brief description of the user interface inputs found on the application.

| UI Inputs | Description
| --------- | -----------
| Symbol | The stock symbol of interest
| Date Range | The start and end dates of the price chart
| Chart Type | Either candle (default) or line can be chosen
| Simple Moving Average | Tick to superimpose Simple Moving Average on the price chart
| Period (Days) | Period of the Simple Moving Average, default 10 days
| Refresh Chart | Button to refresh the price chart         

The charting features of this application is provided by quantmod, a quantitative financial modelling & trading framework for R. Its details can be found at <http://www.quantmod.com/>.

#Instruction

Stock Quote Application was deployed to shinyapps.io, a direct link is [http://bigdatakan.shinyapps.io/shiny/](http://bigdatakan.shinyapps.io/shiny/).

You may also go to my Github to download the ```ui.R``` and ```server.R``` and save them in a directory called "stockquote". Then launch RStudio and set the working directory to the parent directory of "stockquote" and run the following commands:

```
library(shiny)
runApp('stockquote')
```

Enjoy!