#Visualization Assignment Shiny 
#2. Structure and GUI of apps developed with Shiny

# Define UI ----
ui <- fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(
      h1("Installation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code(strong('install.packages(\"shiny")')),
      br(),
      br(),
      br(),
      img(src = "rstudio.png", height = 100, width = 200),
      p("Shiny is a product of",
        span("Rstudio", style = "color:blue"))
    ),
    mainPanel(
      h1("Introducing Shiny"),
      p ("Shiny is a new package from Rstudio that makes it",
         em ("incredibly easy"),
         "to build interactive web",
         br(),
         "applications with R."),
      br(),
      p("For an introduction and live examples, visit the",
        a("Shiny homepage.", 
          href ="https://shiny.rstudio.com/")),
      br(),
      h1("Features"),
      p("- Build useful web applications with only a few lines of code -no JavaScript required."),
      p("- Shiny applications are automatically \'live' in same way that",
        strong("spreadsheets"),
        "are live. Outputs",
        "change instantly as users modify inputs, without requiring a reload of the browser.")
    )
  )
)
  
  
# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)


