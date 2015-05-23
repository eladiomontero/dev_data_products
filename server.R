library(lubridate)

shinyServer(
  function(input, output) {
    x <- reactive({input$text2*4*input$text1})
    output$text1 <- renderPrint({x() })

    output$date <- renderPrint(input$date)
    output$today = renderPrint(Sys.Date())
    output$dayslived = renderText(paste("You have lived", as.numeric(difftime(Sys.Date(),input$date, units = "days"))[1], "days"))
    output$hourslived = renderText(paste("You have lived", as.numeric(difftime(Sys.Date(),input$date, units = "hours"))[1], "hours"))
    output$minslived = renderText(paste("You have lived", as.numeric(difftime(Sys.Date(),input$date, units = "mins"))[1], "minutes"))
    output$secslived = renderText(paste("You have lived", as.numeric(difftime(Sys.Date(),input$date, units = "secs"))[1], "seconds"))
  }
)