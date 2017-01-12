#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  mainPanel(
    img(src = "ButtersSmile.png", height = 150, width = 150),
    div("Scott's Riddle Corner!",style = "font-family: 'times'; font-size:48pt; color:red"),
    textInput("riddle", "Riddle Me This...",value="???")
)
)

# Define server logic required to draw a histogram
server <- function(input, output,session) {
  
  session$onSessionEnded(function() {
    stopApp()
  })
   
   output$distPlot <- renderPlot({
      # generate bins based on input$bins from ui.R
      x    <- faithful[, 2] 
      bins <- seq(min(x), max(x), length.out = input$bins + 1)
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = bins, col = 'darkgray', border = 'white')
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

