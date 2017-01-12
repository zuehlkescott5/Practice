

library(shiny)

date1 <- Sys.Date()


ui <- fluidPage(
  
  mainPanel(
    img(src = "ButtersSmile.png", height = 150, width = 150),
    div("Scott's Riddle Corner!",style = "font-family: 'times'; font-size:48pt; color:red"),
    dateInput("date1", "Date:",value = date1, format = "mm/dd/yyyy"),
    textInput("riddle", "This week's riddle:",value="???"),
    textInput("riddle", "What's your answer?",value="Give it your best shot.")
  )
)


# Define server logic required to draw a histogram
server <- function(input, output,session) {
  
  session$onSessionEnded(function() {
    stopApp()
  })
   

}

# Run the application 
shinyApp(ui = ui, server = server)

