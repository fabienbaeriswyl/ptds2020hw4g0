library(shiny)
library(ptds2020hw4g0) # REPLACE N BY YOUR GROUP NUMBER AND DELETE THIS COMMENT

shinyServer(function(input, output) {

    simulate <- reactive(input$method, {
        # simulate pi and measure the time here
        start.time <- Sys.time()
        pival <- estimate_pi2(B = input$B, seed=input$seed)$estimated_pi
        end.time <- Sys.time()
        time <- end.time-start.time
    })

    output$plot <- renderPlot({
        # plot pi
        plot(simulate())
    })

    output$time <- renderText({
        # extract the time of the execution
        paste("Execution time is:", time)
    })

    output$pi <- renderText({
        # extract the estimated value
        paste("Estimated pi is:", pival)
    })

})
