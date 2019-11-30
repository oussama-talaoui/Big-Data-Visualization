library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel("My Shiny App  in R Studio"),
  sidebarLayout(
    sidebarPanel(
      h2("Installation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code('install.packages("shiny")'),
      br(),
      br(),
      br(),
      br(),
      img(src = "my-shiny-app.png", height = 70, width = 200),
      br(),
      "Shiny is a product of ", 
      span("RStudio", style = "color:blue")
    ),
    mainPanel(
      h1("Introducing Shiny", align = "center"),
      p("Shiny is a new package from RStudio that makes it ", 
        em("incredibly easy "), 
        "to build interactive web applications with R."),
      br(),
      
      p("For an introduction and live examples, visit the ",
        a("Shiny homepage.", 
          href = "http://shiny.rstudio.com")),
      br(),
            br(),
      h2("Features", align = "center"),
      p("- Build useful web applications with only a few lines of code-no JavaScript required."),
      p("- Shiny applications are automatically 'live' in the same way that ", 
        strong("spreadsheets"),
        " are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser."),
      h2("Our Conclusions", align = "center"),
      br(),
      p(" Essentially, we can take almost any analysis we've done in R, and then make it  "), 
        strong("interactive.",  align = "center")
      ),
  ),
)

  


# Define server logic ----
server <- function(input, output) {
  
}

# Run the app ----
shinyApp(ui = ui, server = server)