library(shiny)

shinyUI(fluidPage(

    titlePanel("Pi Estimation"),

    sidebarLayout(

        sidebarPanel(

            selectInput("method", "Parameters:", choices=c("seed", "B")),

            numericInput("seed", "Enter the desired seed:", min=1, max=10^6, value=1),

            sliderInput("B", "Enter the number of simulations", min=1, max=1000000, value=100)

        ),

        mainPanel(

            plotOutput("plot"),

            textOutput("time"),

            textOutput("pi")
        )
    )
))
