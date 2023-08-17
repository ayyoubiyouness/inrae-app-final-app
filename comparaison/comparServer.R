server <- function(input, output) {
  data_young <-  reactive({
    
    data %>% filter(scenario %in% c(input$Id044 ,input$Id045, input$Id046))
  })
  
  
  output$youness <- renderHighchart({
    highchart() %>% 
      hc_chart(type = "column") %>%
      hc_plotOptions(column = list(stacking = "normal")) %>%
      hc_xAxis(categories = data_young()$scenario) %>%
      
      hc_add_series(name="Light Young",
                    data = data_young()$`Light Young`
      ) %>%
      hc_add_series(name="Female Culled",
                    data = data_young()$`Female Culled`
      ) %>%
      hc_add_series(name="Heavy Young",
                    data = data_young()$`Heavy Young`
      ) 
    
  })
  
  data_saison <-  reactive({
    
    dd %>% filter(scenario %in% c(input$Id047 ,input$Id048, input$Id049))
  })
  output$plot <- renderPlotly({
    vistime(data_saison(), 
            col.event = "event", 
            col.group = "scenario", 
            title = "Repartition par saison")
    
    
  })
  
  data_rang <-  reactive({
    
    nn %>% filter(scenario_lack %in% c(input$Id050 ,input$Id051, input$Id052))
  })
  output$jlol <- renderHighchart({
    highchart() %>% 
      hc_chart(type = "column") %>%
      hc_plotOptions(column = list(stacking = "normal")) %>%
      hc_xAxis(categories = data_rang()$scenario_lack) %>%
      
      hc_add_series(name="Grassland lack",
                    data = data_rang()$`Grassland lack`
      ) %>%
      hc_add_series(name="Rangeland lack",
                    data = data_rang()$`Rangeland lack`
      ) 
    
  })
  
  data_taux <-  reactive({
    
    tt %>% filter(scenario_lack %in% c(input$Id053 ,input$Id054, input$Id055))
  })
  output$anas <- renderHighchart({
    highchart() %>% 
      hc_chart(type = "column") %>%
      hc_plotOptions(column = list(stacking = "normal")) %>%
      hc_xAxis(categories = data_taux()$scenario_taux) %>%
      
      hc_add_series(name="autonomie en concentrée",
                    data = data_taux()$`autonomie en concentrée`
      ) %>%
      hc_add_series(name="autonomie fouragère",
                    data = data_taux()$`autonomie fouragère`
      ) %>%
      hc_add_series(name="taux de paturage",
                    data = data_taux()$`taux de paturage`
      ) 
    
  })
  
}
shinyApp(ui, server)