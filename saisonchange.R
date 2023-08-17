periods_scen2
periods
periods_scen2 <- periods_scen2 %>%
  mutate(scenario = rep("scenario2"))
periods <- periods %>%
  mutate(scenario = rep("scenario1"))
dd <- rbind(periods, periods_scen2)

vistime(dd, 
        col.event = "event", 
        col.group = "scenario", 
        title = "epartition par saison")


ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody(
    pickerInput(
      inputId = "Id094",
      label = "Select/deselect all options", 
      choices = c("scenario1", "scenario2"),
      options = list(
        `actions-box` = TRUE), 
      multiple = TRUE
    ),
    plotlyOutput("plot")
  )
)

server <- function(input, output) { 
  filter1 <-  reactive({
    
    dd %>% filter(scenario %in% input$Id094)
  })
  output$plot <- renderPlotly({
    vistime(filter1(), 
            col.event = "event", 
            col.group = "scenario", 
            title = "epartition par saison")
   
    
  })
}


shinyApp(ui, server)

