library(shiny)
library(ptds2020hw4g0) # REPLACE N BY YOUR GROUP NUMBER AND DELETE THIS COMMENT

shinyServer(function(input, output) {

simulate <- reactive({
    #simulate pi and measure the time here
    if(input$method=="estimated_pi"){
        estimate_pi(B = input$B, seed=input$seed)

    }else{
        estimate_pi2(B = input$B, seed=input$seed)
    }

})

   output$plot <- renderPlot({
       # plot pi
      plot(simulate())
   })

   output$time <- renderText({
      #extract the time of the execution
      options(digits.secs=6)
      start.time <- Sys.time()
      simulate()
      end.time <- Sys.time()
      time <- end.time-start.time
      paste("Execution time is:", time)
    })

   output$pi <- renderText({
   # extract the estimated value
    pival <- simulate()$estimated_pi
   paste("Estimated pi is:", pival)
    })

})
