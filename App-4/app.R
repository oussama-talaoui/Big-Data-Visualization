library(shiny)

ui <- fluidPage(
  titlePanel("US 2010 Census"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
               information from the 2010 US Census."),
      
      selectInput("per", 
                  label = "Choose a variable to display",
                  choices = c("Percent White", 
                              "Percent Black",
                              "Percent Hispanic", 
                              "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      textOutput("selected_per"),
      textOutput("min_max")
    )
  )
)

server <- function(input, output) {
  
  output$selected_per <- renderText({ 
    paste("You have selected",  input$per)
  })
  
  output$min_max <- renderText({ 
    paste("You have chosen a range that goes from",
          input$range[1], "to", input$range[2])
  })
  
}

# Run the app ----
shinyApp(ui = ui, server = server)