## Shiny Server Side

## REQUIRE
require(shiny)

figuresList <- figureFiveBCDE()

## SERVER LOGIC
shinyServer(function(input, output) {
  output$figureA <- renderPlot({
    # Take a dependency on input$goButton
    input$runCode
    figureFiveA()
  })
  
  output$figureB <- renderPlot({
    figuresList$gradeBoxPlot
  })
  
  output$figureC <- renderPlot({
    figuresList$lymphNodeBoxPlot
  })
  
  output$figureD <- renderPlot({
    figuresList$timeBoxPlot
  })
  
  output$figureE <- renderPlot({
    figuresList$clincalBoxPlot
  })
}) 