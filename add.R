# -------------------------------------------------------------------------Scénario 410
# paramètres d'entrés
# Vis 1
observeEvent(input$item_choice_scenC10, {
  hcpxy <- highchartProxy("animated_scenC10")
  
  if(input$item_choice_scenC10 == "parliment") {
    hcpxy %>%
      hcpxy_update_series(
        id = "serieid",
        center = list('50%', '88%'),
        size = '170%',
        startAngle = -100,
        endAngle = 100
      )
  } else if (input$item_choice_scenC10 == "rectangle") {
    hcpxy %>%
      hcpxy_update_series(
        id = "serieid",
        startAngle = NULL,
        endAngle = NULL
      )
  } else if (input$item_choice_scenC10 == "circle") {
    hcpxy %>%
      hcpxy_update_series(
        id = "serieid",
        center = list('50%', '50%'),
        size = '100%',
        startAngle = 0,
        endAngle = 360
      )
  }
})

output$animated_scenC10 <- renderHighchart ({
  # Sys.sleep(1.5)
  vis1server( a = data2_scenC10)
})

# Vis 2
output$ressource_surface_scenC10 <- renderHighchart({
  vis2server( a = plot_man_scenC10$taille, b = rendement_scenC10$valeur, c = plot_man_scenC10$Surface)
})

# Vis 3
output$stade_physio_scenC10 <- renderDT({
  vis3server( a = stadephysio_scenC10)
})

# Vis 4

output$period_scenC10 <- renderPlotly({
  vis4server( a = periods_scenC10)
})


# Paramètres de sortie 
# Vis a

bins_scenC10 <- reactive({
  input$radio_scenC10
  if (input$radio_scenC10 == 1) {
    dataa_scenC10 <- mois(data_radio_scenC10)
  } else if ((input$radio_scenC10 == 2)) {
    dataa_scenC10 <- saison(data_radio_scenC10)
  } else if ((input$radio == 3)) {
    dataa_scenC10 <- quinzine(data_radio_scenC10)
  } else {
    dataa_scenC10 <- data_radio_scenC10
  }
  
})


output$plot_scenC10 <- renderHighchart({
  
  visAserver(a = bins_scenC10())
  
})

# Vis b
output$ressour_consom_scenC10 <- renderHighchart({
  visBserver(a = data3_radio_scenC10)
})

# Vis c

output$forage_ingestt_scenC10 <- renderInfoBox({
  visCserver(round(forage_ingest_par_fememlle_scenC10))
})

# Vis d
output$grain_ingestt_scenC10 <- renderInfoBox({
  visDserver(round(grain_ingest_par_fememlle_scenC10))
})

# Vis e
output$youngsoldl_scenC10 <- renderInfoBox({
  visEserver(light_young_scenC10)
})

# Vis f

output$youngsoldh_scenC10 <- renderInfoBox({
  visFserver(heavy_young_scenC10)
})

# Vis g
output$femalecul_scenC10 <- renderInfoBox({
  visGserver(female_culled_scenC10)
})

# Vis l
output$rlack_scenC10 <- renderInfoBox({
  visLserver(rangeland_lack_scenC10)
})

# Vis m
output$glack_scenC10 <- renderInfoBox({
  visMserver(grassland_lack_scenC10)
})

# Vis h
output$ressour_consom_produit_scenC10 <-  renderHighchart({
  visHserver(data_ressource_scenC10)
})

# Vis i
output$gauge1_scenC10 <- renderHighchart({
  visIserver(taux_paturage_scenC10)
})

# Vis j
output$gauge2_scenC10 <- renderHighchart({
  visIserver(auto_four_scenC10)
})

# Vis k

output$gauge3_scenC10 <- renderHighchart({
  visIserver(auto_concen_scenC10)
})