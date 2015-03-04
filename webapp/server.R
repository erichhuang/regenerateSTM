## Shiny Server Side

## REQUIRE
require(shiny)

## SERVER LOGIC
shinyServer(function(input, output) {
  output$figureA <- renderPlot({
    # Take a dependency on input$goButton
    input$runCode
    figureFiveA()
  })
}) 