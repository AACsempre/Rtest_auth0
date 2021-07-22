#
# Test R shiny app with Auth0
#

#options(auth0_disable = TRUE) 
options(shiny.port = 7000)
library(shiny)

library(auth0)
#library(shinyjs)

ui <- fluidPage(
    plotOutput("plot"),
    logoutButton(),
    verbatimTextOutput("user_info")
)

server <- function(input, output, session) {
    output$plot <- renderPlot({
        plot(1:10)
    })
    # print user info
    output$user_info <- renderPrint({
        session$userData$auth0_info
    })
}

# Run the application 
shinyAppAuth0(ui, server)
