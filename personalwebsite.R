## app.R ##
library(shinydashboard)
library(shiny)
ui <- dashboardPage(
  dashboardHeader(title = "Pang-Yu Liu (Jeff)"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Welcome", tabName = "about", icon = icon("dashboard")),
      menuItem("Projects", tabName = "projects", icon = icon("table"))
    )
  ),
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = 'about',
              h2(strong('About'))),
      tabItem(tabName = 'projects',
              h2(strong('Projects')),
              br(),
              p("Covid-19-Dashboard-in-US",
                a("Github.", 
                  href = "https://github.com/liuc3k/Covid-19-Dashboard-in-US"))
              )
    )
  )
)

server <- function(input, output) {

}

shinyApp(ui, server)
