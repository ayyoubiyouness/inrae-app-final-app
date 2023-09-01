server <- function(input, output) {
  # -------------------------------------------------------------------------Home
  output$home_img <- renderImage({
    
    list(src = "www/imgaccueil.jpg",
         width = "100%",
         height = 330)
    
  }, deleteFile = F)
  # -------------------------------------------------------------------------Scénario 0
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice, {
    hcpxy <- highchartProxy("animated")
    
    if(input$item_choice == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice == "circle") {
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
  
  output$animated <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2)
  })
  
  # Vis 2
  output$ressource_surface <- renderHighchart({
    vis2server( a = plot_man$taille, b = rendement$valeur, c = plot_man$Surface)
  })
  
  # Vis 3
  output$stade_physio <- renderDT({
    vis3server( a = stadephysio)
  })
  
  # Vis 4
  
  output$period <- renderPlotly({
    vis4server( a = periods)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins <- reactive({
    input$radio
    if (input$radio == 1) {
      dataa <- mois(data_radio)
    } else if ((input$radio == 2)) {
      dataa <- saison(data_radio)
    } else if ((input$radio == 3)) {
      dataa <- quinzine(data_radio)
    } else {
      dataa <- data_radio
    }

  })
  
  
  output$plot <- renderHighchart({

    visAserver(a = bins())
    
   })
  
  # Vis b
  output$ressour_consom <- renderHighchart({
    visBserver(a = data3_radio)
  })
  
  # Vis c
  
  output$forage_ingestt <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle))
  })
  
  # Vis d
  output$grain_ingestt <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle))
  })
  
  # Vis e
  output$youngsoldl <- renderInfoBox({
    visEserver(light_young)
  })
  
  # Vis f
  
  output$youngsoldh <- renderInfoBox({
    visFserver(heavy_young)
  })
  
  # Vis g
  output$femalecul <- renderInfoBox({
    visGserver(female_culled)
  })
  
  # Vis l
  output$rlack <- renderInfoBox({
    visLserver(rangeland_lack)
  })
  
  # Vis m
  output$glack <- renderInfoBox({
    visMserver(grassland_lack)
  })
  
  # Vis h
  output$ressour_consom_produit <-  renderHighchart({
    visHserver(data_ressource)
  })
  
  # Vis i
  output$gauge1 <- renderHighchart({
    visIserver(taux_paturage)
  })
  
  # Vis j
  output$gauge2 <- renderHighchart({
    visIserver(auto_four)
  })
  
  # Vis k
  
  output$gauge3 <- renderHighchart({
    visIserver(auto_concen)
  })
  
  
  # -------------------------------------------------------------------------Scénario 2
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen2, {
    hcpxy <- highchartProxy("animated_scen2")
    
    if(input$item_choice_scen2 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen2 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen2 == "circle") {
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
  
  output$animated_scen2 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen2)
  })
  
  # Vis 2
  output$ressource_surface_scen2 <- renderHighchart({
    vis2server( a = plot_man_scen2$taille, b = rendement_scen2$valeur, c = plot_man_scen2$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen2 <- renderDT({
    vis3server( a = stadephysio_scen2)
  })
  
  # Vis 4
  
  output$period_scen2 <- renderPlotly({
    vis4server( a = periods_scen2)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen2 <- reactive({
    input$radio_scen2
    if (input$radio_scen2 == 1) {
      dataa_scen2 <- mois(data_radio_scen2)
    } else if ((input$radio_scen2 == 2)) {
      dataa_scen2 <- saison(data_radio_scen2)
    } else if ((input$radio == 3)) {
      dataa_scen2 <- quinzine(data_radio_scen2)
    } else {
      dataa_scen2 <- data_radio_scen2
    }
    
  })
  
  
  output$plot_scen2 <- renderHighchart({
    
    visAserver(a = bins_scen2())
    
  })
  
  # Vis b
  output$ressour_consom_scen2 <- renderHighchart({
    visBserver(a = data3_radio_scen2)
  })
  
  # Vis c
  
  output$forage_ingestt_scen2 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen2))
  })
  
  # Vis d
  output$grain_ingestt_scen2 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen2))
  })
  
  # Vis e
  output$youngsoldl_scen2 <- renderInfoBox({
    visEserver(light_young_scen2)
  })
  
  # Vis f
  
  output$youngsoldh_scen2 <- renderInfoBox({
    visFserver(heavy_young_scen2)
  })
  
  # Vis g
  output$femalecul_scen2 <- renderInfoBox({
    visGserver(female_culled_scen2)
  })
  
  # Vis l
  output$rlack_scen2 <- renderInfoBox({
    visLserver(rangeland_lack_scen2)
  })
  
  # Vis m
  output$glack_scen2 <- renderInfoBox({
    visMserver(grassland_lack_scen2)
  })
  
  # Vis h
  output$ressour_consom_produit_scen2 <-  renderHighchart({
    visHserver(data_ressource_scen2)
  })
  
  # Vis i
  output$gauge1_scen2 <- renderHighchart({
    visIserver(taux_paturage_scen2)
  })
  
  # Vis j
  output$gauge2_scen2 <- renderHighchart({
    visIserver(auto_four_scen2)
  })
  
  # Vis k
  
  output$gauge3_scen2 <- renderHighchart({
    visIserver(auto_concen_scen2)
  })
  
  
  # -------------------------------------------------------------------------Scénario 3
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen3, {
    hcpxy <- highchartProxy("animated_scen3")
    
    if(input$item_choice_scen3 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen3 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen3 == "circle") {
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
  
  output$animated_scen3 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen3)
  })
  
  # Vis 2
  output$ressource_surface_scen3 <- renderHighchart({
    vis2server( a = plot_man_scen3$taille, b = rendement_scen3$valeur, c = plot_man_scen3$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen3 <- renderDT({
    vis3server( a = stadephysio_scen3)
  })
  
  # Vis 4
  
  output$period_scen3 <- renderPlotly({
    vis4server( a = periods_scen3)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen3 <- reactive({
    input$radio_scen3
    if (input$radio_scen3 == 1) {
      dataa_scen3 <- mois(data_radio_scen3)
    } else if ((input$radio_scen3 == 2)) {
      dataa_scen3 <- saison(data_radio_scen3)
    } else if ((input$radio == 3)) {
      dataa_scen3 <- quinzine(data_radio_scen3)
    } else {
      dataa_scen3 <- data_radio_scen3
    }
    
  })
  
  
  output$plot_scen3 <- renderHighchart({
    
    visAserver(a = bins_scen3())
    
  })
  
  # Vis b
  output$ressour_consom_scen3 <- renderHighchart({
    visBserver(a = data3_radio_scen3)
  })
  
  # Vis c
  
  output$forage_ingestt_scen3 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen3))
  })
  
  # Vis d
  output$grain_ingestt_scen3 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen3))
  })
  
  # Vis e
  output$youngsoldl_scen3 <- renderInfoBox({
    visEserver(light_young_scen3)
  })
  
  # Vis f
  
  output$youngsoldh_scen3 <- renderInfoBox({
    visFserver(heavy_young_scen3)
  })
  
  # Vis g
  output$femalecul_scen3 <- renderInfoBox({
    visGserver(female_culled_scen3)
  })
  
  # Vis l
  output$rlack_scen3 <- renderInfoBox({
    visLserver(rangeland_lack_scen3)
  })
  
  # Vis m
  output$glack_scen3 <- renderInfoBox({
    visMserver(grassland_lack_scen3)
  })
  
  # Vis h
  output$ressour_consom_produit_scen3 <-  renderHighchart({
    visHserver(data_ressource_scen3)
  })
  
  # Vis i
  output$gauge1_scen3 <- renderHighchart({
    visIserver(taux_paturage_scen3)
  })
  
  # Vis j
  output$gauge2_scen3 <- renderHighchart({
    visIserver(auto_four_scen3)
  })
  
  # Vis k
  
  output$gauge3_scen3 <- renderHighchart({
    visIserver(auto_concen_scen3)
  })
  
  
  # -------------------------------------------------------------------------Scénario 4
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen4, {
    hcpxy <- highchartProxy("animated_scen4")
    
    if(input$item_choice_scen4 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen4 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen4 == "circle") {
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
  
  output$animated_scen4 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen4)
  })
  
  # Vis 2
  output$ressource_surface_scen4 <- renderHighchart({
    vis2server( a = plot_man_scen4$taille, b = rendement_scen4$valeur, c = plot_man_scen4$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen4 <- renderDT({
    vis3server( a = stadephysio_scen4)
  })
  
  # Vis 4
  
  output$period_scen4 <- renderPlotly({
    vis4server( a = periods_scen4)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen4 <- reactive({
    input$radio_scen4
    if (input$radio_scen4 == 1) {
      dataa_scen4 <- mois(data_radio_scen4)
    } else if ((input$radio_scen4 == 2)) {
      dataa_scen4 <- saison(data_radio_scen4)
    } else if ((input$radio == 3)) {
      dataa_scen4 <- quinzine(data_radio_scen4)
    } else {
      dataa_scen4 <- data_radio_scen4
    }
    
  })
  
  
  output$plot_scen4 <- renderHighchart({
    
    visAserver(a = bins_scen4())
    
  })
  
  # Vis b
  output$ressour_consom_scen4 <- renderHighchart({
    visBserver(a = data3_radio_scen4)
  })
  
  # Vis c
  
  output$forage_ingestt_scen4 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen4))
  })
  
  # Vis d
  output$grain_ingestt_scen4 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen4))
  })
  
  # Vis e
  output$youngsoldl_scen4 <- renderInfoBox({
    visEserver(light_young_scen4)
  })
  
  # Vis f
  
  output$youngsoldh_scen4 <- renderInfoBox({
    visFserver(heavy_young_scen4)
  })
  
  # Vis g
  output$femalecul_scen4 <- renderInfoBox({
    visGserver(female_culled_scen4)
  })
  
  # Vis l
  output$rlack_scen4 <- renderInfoBox({
    visLserver(rangeland_lack_scen4)
  })
  
  # Vis m
  output$glack_scen4 <- renderInfoBox({
    visMserver(grassland_lack_scen4)
  })
  
  # Vis h
  output$ressour_consom_produit_scen4 <-  renderHighchart({
    visHserver(data_ressource_scen4)
  })
  
  # Vis i
  output$gauge1_scen4 <- renderHighchart({
    visIserver(taux_paturage_scen4)
  })
  
  # Vis j
  output$gauge2_scen4 <- renderHighchart({
    visIserver(auto_four_scen4)
  })
  
  # Vis k
  
  output$gauge3_scen4 <- renderHighchart({
    visIserver(auto_concen_scen4)
  })
  
  # -------------------------------------------------------------------------Scénario 5
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen5, {
    hcpxy <- highchartProxy("animated_scen5")
    
    if(input$item_choice_scen5 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen5 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen5 == "circle") {
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
  
  output$animated_scen5 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen5)
  })
  
  # Vis 2
  output$ressource_surface_scen5 <- renderHighchart({
    vis2server( a = plot_man_scen5$taille, b = rendement_scen5$valeur, c = plot_man_scen5$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen5 <- renderDT({
    vis3server( a = stadephysio_scen5)
  })
  
  # Vis 4
  
  output$period_scen5 <- renderPlotly({
    vis4server( a = periods_scen5)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen5 <- reactive({
    input$radio_scen5
    if (input$radio_scen5 == 1) {
      dataa_scen5 <- mois(data_radio_scen5)
    } else if ((input$radio_scen5 == 2)) {
      dataa_scen5 <- saison(data_radio_scen5)
    } else if ((input$radio == 3)) {
      dataa_scen5 <- quinzine(data_radio_scen5)
    } else {
      dataa_scen5 <- data_radio_scen5
    }
    
  })
  
  
  output$plot_scen5 <- renderHighchart({
    
    visAserver(a = bins_scen5())
    
  })
  
  # Vis b
  output$ressour_consom_scen5 <- renderHighchart({
    visBserver(a = data3_radio_scen5)
  })
  
  # Vis c
  
  output$forage_ingestt_scen5 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen5))
  })
  
  # Vis d
  output$grain_ingestt_scen5 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen5))
  })
  
  # Vis e
  output$youngsoldl_scen5 <- renderInfoBox({
    visEserver(light_young_scen5)
  })
  
  # Vis f
  
  output$youngsoldh_scen5 <- renderInfoBox({
    visFserver(heavy_young_scen5)
  })
  
  # Vis g
  output$femalecul_scen5 <- renderInfoBox({
    visGserver(female_culled_scen5)
  })
  
  # Vis l
  output$rlack_scen5 <- renderInfoBox({
    visLserver(rangeland_lack_scen5)
  })
  
  # Vis m
  output$glack_scen5 <- renderInfoBox({
    visMserver(grassland_lack_scen5)
  })
  
  # Vis h
  output$ressour_consom_produit_scen5 <-  renderHighchart({
    visHserver(data_ressource_scen5)
  })
  
  # Vis i
  output$gauge1_scen5 <- renderHighchart({
    visIserver(taux_paturage_scen5)
  })
  
  # Vis j
  output$gauge2_scen5 <- renderHighchart({
    visIserver(auto_four_scen5)
  })
  
  # Vis k
  
  output$gauge3_scen5 <- renderHighchart({
    visIserver(auto_concen_scen5)
  })
  
  # -------------------------------------------------------------------------Scénario 6
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen6, {
    hcpxy <- highchartProxy("animated_scen6")
    
    if(input$item_choice_scen6 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen6 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen6 == "circle") {
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
  
  output$animated_scen6 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen6)
  })
  
  # Vis 2
  output$ressource_surface_scen6 <- renderHighchart({
    vis2server( a = plot_man_scen6$taille, b = rendement_scen6$valeur, c = plot_man_scen6$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen6 <- renderDT({
    vis3server( a = stadephysio_scen6)
  })
  
  # Vis 4
  
  output$period_scen6 <- renderPlotly({
    vis4server( a = periods_scen6)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen6 <- reactive({
    input$radio_scen6
    if (input$radio_scen6 == 1) {
      dataa_scen6 <- mois(data_radio_scen6)
    } else if ((input$radio_scen6 == 2)) {
      dataa_scen6 <- saison(data_radio_scen6)
    } else if ((input$radio == 3)) {
      dataa_scen6 <- quinzine(data_radio_scen6)
    } else {
      dataa_scen6 <- data_radio_scen6
    }
    
  })
  
  
  output$plot_scen6 <- renderHighchart({
    
    visAserver(a = bins_scen6())
    
  })
  
  # Vis b
  output$ressour_consom_scen6 <- renderHighchart({
    visBserver(a = data3_radio_scen6)
  })
  
  # Vis c
  
  output$forage_ingestt_scen6 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen6))
  })
  
  # Vis d
  output$grain_ingestt_scen6 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen6))
  })
  
  # Vis e
  output$youngsoldl_scen6 <- renderInfoBox({
    visEserver(light_young_scen6)
  })
  
  # Vis f
  
  output$youngsoldh_scen6 <- renderInfoBox({
    visFserver(heavy_young_scen6)
  })
  
  # Vis g
  output$femalecul_scen6 <- renderInfoBox({
    visGserver(female_culled_scen6)
  })
  
  # Vis l
  output$rlack_scen6 <- renderInfoBox({
    visLserver(rangeland_lack_scen6)
  })
  
  # Vis m
  output$glack_scen6 <- renderInfoBox({
    visMserver(grassland_lack_scen6)
  })
  
  # Vis h
  output$ressour_consom_produit_scen6 <-  renderHighchart({
    visHserver(data_ressource_scen6)
  })
  
  # Vis i
  output$gauge1_scen6 <- renderHighchart({
    visIserver(taux_paturage_scen6)
  })
  
  # Vis j
  output$gauge2_scen6 <- renderHighchart({
    visIserver(auto_four_scen6)
  })
  
  # Vis k
  
  output$gauge3_scen6 <- renderHighchart({
    visIserver(auto_concen_scen6)
  })
  
  # -------------------------------------------------------------------------Scénario 7
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen7, {
    hcpxy <- highchartProxy("animated_scen7")
    
    if(input$item_choice_scen7 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen7 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen7 == "circle") {
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
  
  output$animated_scen7 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen7)
  })
  
  # Vis 2
  output$ressource_surface_scen7 <- renderHighchart({
    vis2server( a = plot_man_scen7$taille, b = rendement_scen7$valeur, c = plot_man_scen7$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen7 <- renderDT({
    vis3server( a = stadephysio_scen7)
  })
  
  # Vis 4
  
  output$period_scen7 <- renderPlotly({
    vis4server( a = periods_scen7)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen7 <- reactive({
    input$radio_scen7
    if (input$radio_scen7 == 1) {
      dataa_scen7 <- mois(data_radio_scen7)
    } else if ((input$radio_scen7 == 2)) {
      dataa_scen7 <- saison(data_radio_scen7)
    } else if ((input$radio == 3)) {
      dataa_scen7 <- quinzine(data_radio_scen7)
    } else {
      dataa_scen7 <- data_radio_scen7
    }
    
  })
  
  
  output$plot_scen7 <- renderHighchart({
    
    visAserver(a = bins_scen7())
    
  })
  
  # Vis b
  output$ressour_consom_scen7 <- renderHighchart({
    visBserver(a = data3_radio_scen7)
  })
  
  # Vis c
  
  output$forage_ingestt_scen7 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen7))
  })
  
  # Vis d
  output$grain_ingestt_scen7 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen7))
  })
  
  # Vis e
  output$youngsoldl_scen7 <- renderInfoBox({
    visEserver(light_young_scen7)
  })
  
  # Vis f
  
  output$youngsoldh_scen7 <- renderInfoBox({
    visFserver(heavy_young_scen7)
  })
  
  # Vis g
  output$femalecul_scen7 <- renderInfoBox({
    visGserver(female_culled_scen7)
  })
  
  # Vis l
  output$rlack_scen7 <- renderInfoBox({
    visLserver(rangeland_lack_scen7)
  })
  
  # Vis m
  output$glack_scen7 <- renderInfoBox({
    visMserver(grassland_lack_scen7)
  })
  
  # Vis h
  output$ressour_consom_produit_scen7 <-  renderHighchart({
    visHserver(data_ressource_scen7)
  })
  
  # Vis i
  output$gauge1_scen7 <- renderHighchart({
    visIserver(taux_paturage_scen7)
  })
  
  # Vis j
  output$gauge2_scen7 <- renderHighchart({
    visIserver(auto_four_scen7)
  })
  
  # Vis k
  
  output$gauge3_scen7 <- renderHighchart({
    visIserver(auto_concen_scen7)
  })
  
  # -------------------------------------------------------------------------Scénario 8
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen8, {
    hcpxy <- highchartProxy("animated_scen8")
    
    if(input$item_choice_scen8 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen8 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen8 == "circle") {
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
  
  output$animated_scen8 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen8)
  })
  
  # Vis 2
  output$ressource_surface_scen8 <- renderHighchart({
    vis2server( a = plot_man_scen8$taille, b = rendement_scen8$valeur, c = plot_man_scen8$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen8 <- renderDT({
    vis3server( a = stadephysio_scen8)
  })
  
  # Vis 4
  
  output$period_scen8 <- renderPlotly({
    vis4server( a = periods_scen8)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen8 <- reactive({
    input$radio_scen8
    if (input$radio_scen8 == 1) {
      dataa_scen8 <- mois(data_radio_scen8)
    } else if ((input$radio_scen8 == 2)) {
      dataa_scen8 <- saison(data_radio_scen8)
    } else if ((input$radio == 3)) {
      dataa_scen8 <- quinzine(data_radio_scen8)
    } else {
      dataa_scen8 <- data_radio_scen8
    }
    
  })
  
  
  output$plot_scen8 <- renderHighchart({
    
    visAserver(a = bins_scen8())
    
  })
  
  # Vis b
  output$ressour_consom_scen8 <- renderHighchart({
    visBserver(a = data3_radio_scen8)
  })
  
  # Vis c
  
  output$forage_ingestt_scen8 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen8))
  })
  
  # Vis d
  output$grain_ingestt_scen8 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen8))
  })
  
  # Vis e
  output$youngsoldl_scen8 <- renderInfoBox({
    visEserver(light_young_scen8)
  })
  
  # Vis f
  
  output$youngsoldh_scen8 <- renderInfoBox({
    visFserver(heavy_young_scen8)
  })
  
  # Vis g
  output$femalecul_scen8 <- renderInfoBox({
    visGserver(female_culled_scen8)
  })
  
  # Vis l
  output$rlack_scen8 <- renderInfoBox({
    visLserver(rangeland_lack_scen8)
  })
  
  # Vis m
  output$glack_scen8 <- renderInfoBox({
    visMserver(grassland_lack_scen8)
  })
  
  # Vis h
  output$ressour_consom_produit_scen8 <-  renderHighchart({
    visHserver(data_ressource_scen8)
  })
  
  # Vis i
  output$gauge1_scen8 <- renderHighchart({
    visIserver(taux_paturage_scen8)
  })
  
  # Vis j
  output$gauge2_scen8 <- renderHighchart({
    visIserver(auto_four_scen8)
  })
  
  # Vis k
  
  output$gauge3_scen8 <- renderHighchart({
    visIserver(auto_concen_scen8)
  })
  
  # -------------------------------------------------------------------------Scénario 9
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen9, {
    hcpxy <- highchartProxy("animated_scen9")
    
    if(input$item_choice_scen9 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen9 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen9 == "circle") {
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
  
  output$animated_scen9 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen9)
  })
  
  # Vis 2
  output$ressource_surface_scen9 <- renderHighchart({
    vis2server( a = plot_man_scen9$taille, b = rendement_scen9$valeur, c = plot_man_scen9$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen9 <- renderDT({
    vis3server( a = stadephysio_scen9)
  })
  
  # Vis 4
  
  output$period_scen9 <- renderPlotly({
    vis4server( a = periods_scen9)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen9 <- reactive({
    input$radio_scen9
    if (input$radio_scen9 == 1) {
      dataa_scen9 <- mois(data_radio_scen9)
    } else if ((input$radio_scen9 == 2)) {
      dataa_scen9 <- saison(data_radio_scen9)
    } else if ((input$radio == 3)) {
      dataa_scen9 <- quinzine(data_radio_scen9)
    } else {
      dataa_scen9 <- data_radio_scen9
    }
    
  })
  
  
  output$plot_scen9 <- renderHighchart({
    
    visAserver(a = bins_scen9())
    
  })
  
  # Vis b
  output$ressour_consom_scen9 <- renderHighchart({
    visBserver(a = data3_radio_scen9)
  })
  
  # Vis c
  
  output$forage_ingestt_scen9 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen9))
  })
  
  # Vis d
  output$grain_ingestt_scen9 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen9))
  })
  
  # Vis e
  output$youngsoldl_scen9 <- renderInfoBox({
    visEserver(light_young_scen9)
  })
  
  # Vis f
  
  output$youngsoldh_scen9 <- renderInfoBox({
    visFserver(heavy_young_scen9)
  })
  
  # Vis g
  output$femalecul_scen9 <- renderInfoBox({
    visGserver(female_culled_scen9)
  })
  
  # Vis l
  output$rlack_scen9 <- renderInfoBox({
    visLserver(rangeland_lack_scen9)
  })
  
  # Vis m
  output$glack_scen9 <- renderInfoBox({
    visMserver(grassland_lack_scen9)
  })
  
  # Vis h
  output$ressour_consom_produit_scen9 <-  renderHighchart({
    visHserver(data_ressource_scen9)
  })
  
  # Vis i
  output$gauge1_scen9 <- renderHighchart({
    visIserver(taux_paturage_scen9)
  })
  
  # Vis j
  output$gauge2_scen9 <- renderHighchart({
    visIserver(auto_four_scen9)
  })
  
  # Vis k
  
  output$gauge3_scen9 <- renderHighchart({
    visIserver(auto_concen_scen9)
  })
  
  # -------------------------------------------------------------------------Scénario 10
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scen10, {
    hcpxy <- highchartProxy("animated_scen10")
    
    if(input$item_choice_scen10 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scen10 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scen10 == "circle") {
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
  
  output$animated_scen10 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scen10)
  })
  
  # Vis 2
  output$ressource_surface_scen10 <- renderHighchart({
    vis2server( a = plot_man_scen10$taille, b = rendement_scen10$valeur, c = plot_man_scen10$Surface)
  })
  
  # Vis 3
  output$stade_physio_scen10 <- renderDT({
    vis3server( a = stadephysio_scen10)
  })
  
  # Vis 4
  
  output$period_scen10 <- renderPlotly({
    vis4server( a = periods_scen10)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scen10 <- reactive({
    input$radio_scen10
    if (input$radio_scen10 == 1) {
      dataa_scen10 <- mois(data_radio_scen10)
    } else if ((input$radio_scen10 == 2)) {
      dataa_scen10 <- saison(data_radio_scen10)
    } else if ((input$radio == 3)) {
      dataa_scen10 <- quinzine(data_radio_scen10)
    } else {
      dataa_scen10 <- data_radio_scen10
    }
    
  })
  
  
  output$plot_scen10 <- renderHighchart({
    
    visAserver(a = bins_scen10())
    
  })
  
  # Vis b
  output$ressour_consom_scen10 <- renderHighchart({
    visBserver(a = data3_radio_scen10)
  })
  
  # Vis c
  
  output$forage_ingestt_scen10 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scen10))
  })
  
  # Vis d
  output$grain_ingestt_scen10 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scen10))
  })
  
  # Vis e
  output$youngsoldl_scen10 <- renderInfoBox({
    visEserver(light_young_scen10)
  })
  
  # Vis f
  
  output$youngsoldh_scen10 <- renderInfoBox({
    visFserver(heavy_young_scen10)
  })
  
  # Vis g
  output$femalecul_scen10 <- renderInfoBox({
    visGserver(female_culled_scen10)
  })
  
  # Vis l
  output$rlack_scen10 <- renderInfoBox({
    visLserver(rangeland_lack_scen10)
  })
  
  # Vis m
  output$glack_scen10 <- renderInfoBox({
    visMserver(grassland_lack_scen10)
  })
  
  # Vis h
  output$ressour_consom_produit_scen10 <-  renderHighchart({
    visHserver(data_ressource_scen10)
  })
  
  # Vis i
  output$gauge1_scen10 <- renderHighchart({
    visIserver(taux_paturage_scen10)
  })
  
  # Vis j
  output$gauge2_scen10 <- renderHighchart({
    visIserver(auto_four_scen10)
  })
  
  # Vis k
  
  output$gauge3_scen10 <- renderHighchart({
    visIserver(auto_concen_scen10)
  })
  
  # -------------------------------------------------------------------------Scénario 21
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA1, {
    hcpxy <- highchartProxy("animated_scenA1")
    
    if(input$item_choice_scenA1 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA1 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA1 == "circle") {
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
  
  output$animated_scenA1 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA1)
  })
  
  # Vis 2
  output$ressource_surface_scenA1 <- renderHighchart({
    vis2server( a = plot_man_scenA1$taille, b = rendement_scenA1$valeur, c = plot_man_scenA1$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA1 <- renderDT({
    vis3server( a = stadephysio_scenA1)
  })
  
  # Vis 4
  
  output$period_scenA1 <- renderPlotly({
    vis4server( a = periods_scenA1)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA1 <- reactive({
    input$radio_scenA1
    if (input$radio_scenA1 == 1) {
      dataa_scenA1 <- mois(data_radio_scenA1)
    } else if ((input$radio_scenA1 == 2)) {
      dataa_scenA1 <- saison(data_radio_scenA1)
    } else if ((input$radio == 3)) {
      dataa_scenA1 <- quinzine(data_radio_scenA1)
    } else {
      dataa_scenA1 <- data_radio_scenA1
    }
    
  })
  
  
  output$plot_scenA1 <- renderHighchart({
    
    visAserver(a = bins_scenA1())
    
  })
  
  # Vis b
  output$ressour_consom_scenA1 <- renderHighchart({
    visBserver(a = data3_radio_scenA1)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA1 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA1))
  })
  
  # Vis d
  output$grain_ingestt_scenA1 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA1))
  })
  
  # Vis e
  output$youngsoldl_scenA1 <- renderInfoBox({
    visEserver(light_young_scenA1)
  })
  
  # Vis f
  
  output$youngsoldh_scenA1 <- renderInfoBox({
    visFserver(heavy_young_scenA1)
  })
  
  # Vis g
  output$femalecul_scenA1 <- renderInfoBox({
    visGserver(female_culled_scenA1)
  })
  
  # Vis l
  output$rlack_scenA1 <- renderInfoBox({
    visLserver(rangeland_lack_scenA1)
  })
  
  # Vis m
  output$glack_scenA1 <- renderInfoBox({
    visMserver(grassland_lack_scenA1)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA1 <-  renderHighchart({
    visHserver(data_ressource_scenA1)
  })
  
  # Vis i
  output$gauge1_scenA1 <- renderHighchart({
    visIserver(taux_paturage_scenA1)
  })
  
  # Vis j
  output$gauge2_scenA1 <- renderHighchart({
    visIserver(auto_four_scenA1)
  })
  
  # Vis k
  
  output$gauge3_scenA1 <- renderHighchart({
    visIserver(auto_concen_scenA1)
  })
  
  # -------------------------------------------------------------------------Scénario 22
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA2, {
    hcpxy <- highchartProxy("animated_scenA2")
    
    if(input$item_choice_scenA2 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA2 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA2 == "circle") {
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
  
  output$animated_scenA2 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA2)
  })
  
  # Vis 2
  output$ressource_surface_scenA2 <- renderHighchart({
    vis2server( a = plot_man_scenA2$taille, b = rendement_scenA2$valeur, c = plot_man_scenA2$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA2 <- renderDT({
    vis3server( a = stadephysio_scenA2)
  })
  
  # Vis 4
  
  output$period_scenA2 <- renderPlotly({
    vis4server( a = periods_scenA2)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA2 <- reactive({
    input$radio_scenA2
    if (input$radio_scenA2 == 1) {
      dataa_scenA2 <- mois(data_radio_scenA2)
    } else if ((input$radio_scenA2 == 2)) {
      dataa_scenA2 <- saison(data_radio_scenA2)
    } else if ((input$radio == 3)) {
      dataa_scenA2 <- quinzine(data_radio_scenA2)
    } else {
      dataa_scenA2 <- data_radio_scenA2
    }
    
  })
  
  
  output$plot_scenA2 <- renderHighchart({
    
    visAserver(a = bins_scenA2())
    
  })
  
  # Vis b
  output$ressour_consom_scenA2 <- renderHighchart({
    visBserver(a = data3_radio_scenA2)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA2 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA2))
  })
  
  # Vis d
  output$grain_ingestt_scenA2 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA2))
  })
  
  # Vis e
  output$youngsoldl_scenA2 <- renderInfoBox({
    visEserver(light_young_scenA2)
  })
  
  # Vis f
  
  output$youngsoldh_scenA2 <- renderInfoBox({
    visFserver(heavy_young_scenA2)
  })
  
  # Vis g
  output$femalecul_scenA2 <- renderInfoBox({
    visGserver(female_culled_scenA2)
  })
  
  # Vis l
  output$rlack_scenA2 <- renderInfoBox({
    visLserver(rangeland_lack_scenA2)
  })
  
  # Vis m
  output$glack_scenA2 <- renderInfoBox({
    visMserver(grassland_lack_scenA2)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA2 <-  renderHighchart({
    visHserver(data_ressource_scenA2)
  })
  
  # Vis i
  output$gauge1_scenA2 <- renderHighchart({
    visIserver(taux_paturage_scenA2)
  })
  
  # Vis j
  output$gauge2_scenA2 <- renderHighchart({
    visIserver(auto_four_scenA2)
  })
  
  # Vis k
  
  output$gauge3_scenA2 <- renderHighchart({
    visIserver(auto_concen_scenA2)
  })
  
  # -------------------------------------------------------------------------Scénario 23
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA3, {
    hcpxy <- highchartProxy("animated_scenA3")
    
    if(input$item_choice_scenA3 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA3 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA3 == "circle") {
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
  
  output$animated_scenA3 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA3)
  })
  
  # Vis 2
  output$ressource_surface_scenA3 <- renderHighchart({
    vis2server( a = plot_man_scenA3$taille, b = rendement_scenA3$valeur, c = plot_man_scenA3$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA3 <- renderDT({
    vis3server( a = stadephysio_scenA3)
  })
  
  # Vis 4
  
  output$period_scenA3 <- renderPlotly({
    vis4server( a = periods_scenA3)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA3 <- reactive({
    input$radio_scenA3
    if (input$radio_scenA3 == 1) {
      dataa_scenA3 <- mois(data_radio_scenA3)
    } else if ((input$radio_scenA3 == 2)) {
      dataa_scenA3 <- saison(data_radio_scenA3)
    } else if ((input$radio == 3)) {
      dataa_scenA3 <- quinzine(data_radio_scenA3)
    } else {
      dataa_scenA3 <- data_radio_scenA3
    }
    
  })
  
  
  output$plot_scenA3 <- renderHighchart({
    
    visAserver(a = bins_scenA3())
    
  })
  
  # Vis b
  output$ressour_consom_scenA3 <- renderHighchart({
    visBserver(a = data3_radio_scenA3)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA3 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA3))
  })
  
  # Vis d
  output$grain_ingestt_scenA3 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA3))
  })
  
  # Vis e
  output$youngsoldl_scenA3 <- renderInfoBox({
    visEserver(light_young_scenA3)
  })
  
  # Vis f
  
  output$youngsoldh_scenA3 <- renderInfoBox({
    visFserver(heavy_young_scenA3)
  })
  
  # Vis g
  output$femalecul_scenA3 <- renderInfoBox({
    visGserver(female_culled_scenA3)
  })
  
  # Vis l
  output$rlack_scenA3 <- renderInfoBox({
    visLserver(rangeland_lack_scenA3)
  })
  
  # Vis m
  output$glack_scenA3 <- renderInfoBox({
    visMserver(grassland_lack_scenA3)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA3 <-  renderHighchart({
    visHserver(data_ressource_scenA3)
  })
  
  # Vis i
  output$gauge1_scenA3 <- renderHighchart({
    visIserver(taux_paturage_scenA3)
  })
  
  # Vis j
  output$gauge2_scenA3 <- renderHighchart({
    visIserver(auto_four_scenA3)
  })
  
  # Vis k
  
  output$gauge3_scenA3 <- renderHighchart({
    visIserver(auto_concen_scenA3)
  })
  
  # -------------------------------------------------------------------------Scénario 24
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA4, {
    hcpxy <- highchartProxy("animated_scenA4")
    
    if(input$item_choice_scenA4 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA4 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA4 == "circle") {
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
  
  output$animated_scenA4 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA4)
  })
  
  # Vis 2
  output$ressource_surface_scenA4 <- renderHighchart({
    vis2server( a = plot_man_scenA4$taille, b = rendement_scenA4$valeur, c = plot_man_scenA4$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA4 <- renderDT({
    vis3server( a = stadephysio_scenA4)
  })
  
  # Vis 4
  
  output$period_scenA4 <- renderPlotly({
    vis4server( a = periods_scenA4)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA4 <- reactive({
    input$radio_scenA4
    if (input$radio_scenA4 == 1) {
      dataa_scenA4 <- mois(data_radio_scenA4)
    } else if ((input$radio_scenA4 == 2)) {
      dataa_scenA4 <- saison(data_radio_scenA4)
    } else if ((input$radio == 3)) {
      dataa_scenA4 <- quinzine(data_radio_scenA4)
    } else {
      dataa_scenA4 <- data_radio_scenA4
    }
    
  })
  
  
  output$plot_scenA4 <- renderHighchart({
    
    visAserver(a = bins_scenA4())
    
  })
  
  # Vis b
  output$ressour_consom_scenA4 <- renderHighchart({
    visBserver(a = data3_radio_scenA4)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA4 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA4))
  })
  
  # Vis d
  output$grain_ingestt_scenA4 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA4))
  })
  
  # Vis e
  output$youngsoldl_scenA4 <- renderInfoBox({
    visEserver(light_young_scenA4)
  })
  
  # Vis f
  
  output$youngsoldh_scenA4 <- renderInfoBox({
    visFserver(heavy_young_scenA4)
  })
  
  # Vis g
  output$femalecul_scenA4 <- renderInfoBox({
    visGserver(female_culled_scenA4)
  })
  
  # Vis l
  output$rlack_scenA4 <- renderInfoBox({
    visLserver(rangeland_lack_scenA4)
  })
  
  # Vis m
  output$glack_scenA4 <- renderInfoBox({
    visMserver(grassland_lack_scenA4)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA4 <-  renderHighchart({
    visHserver(data_ressource_scenA4)
  })
  
  # Vis i
  output$gauge1_scenA4 <- renderHighchart({
    visIserver(taux_paturage_scenA4)
  })
  
  # Vis j
  output$gauge2_scenA4 <- renderHighchart({
    visIserver(auto_four_scenA4)
  })
  
  # Vis k
  
  output$gauge3_scenA4 <- renderHighchart({
    visIserver(auto_concen_scenA4)
  })
  
  # -------------------------------------------------------------------------Scénario 25
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA5, {
    hcpxy <- highchartProxy("animated_scenA5")
    
    if(input$item_choice_scenA5 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA5 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA5 == "circle") {
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
  
  output$animated_scenA5 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA5)
  })
  
  # Vis 2
  output$ressource_surface_scenA5 <- renderHighchart({
    vis2server( a = plot_man_scenA5$taille, b = rendement_scenA5$valeur, c = plot_man_scenA5$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA5 <- renderDT({
    vis3server( a = stadephysio_scenA5)
  })
  
  # Vis 4
  
  output$period_scenA5 <- renderPlotly({
    vis4server( a = periods_scenA5)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA5 <- reactive({
    input$radio_scenA5
    if (input$radio_scenA5 == 1) {
      dataa_scenA5 <- mois(data_radio_scenA5)
    } else if ((input$radio_scenA5 == 2)) {
      dataa_scenA5 <- saison(data_radio_scenA5)
    } else if ((input$radio == 3)) {
      dataa_scenA5 <- quinzine(data_radio_scenA5)
    } else {
      dataa_scenA5 <- data_radio_scenA5
    }
    
  })
  
  
  output$plot_scenA5 <- renderHighchart({
    
    visAserver(a = bins_scenA5())
    
  })
  
  # Vis b
  output$ressour_consom_scenA5 <- renderHighchart({
    visBserver(a = data3_radio_scenA5)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA5 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA5))
  })
  
  # Vis d
  output$grain_ingestt_scenA5 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA5))
  })
  
  # Vis e
  output$youngsoldl_scenA5 <- renderInfoBox({
    visEserver(light_young_scenA5)
  })
  
  # Vis f
  
  output$youngsoldh_scenA5 <- renderInfoBox({
    visFserver(heavy_young_scenA5)
  })
  
  # Vis g
  output$femalecul_scenA5 <- renderInfoBox({
    visGserver(female_culled_scenA5)
  })
  
  # Vis l
  output$rlack_scenA5 <- renderInfoBox({
    visLserver(rangeland_lack_scenA5)
  })
  
  # Vis m
  output$glack_scenA5 <- renderInfoBox({
    visMserver(grassland_lack_scenA5)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA5 <-  renderHighchart({
    visHserver(data_ressource_scenA5)
  })
  
  # Vis i
  output$gauge1_scenA5 <- renderHighchart({
    visIserver(taux_paturage_scenA5)
  })
  
  # Vis j
  output$gauge2_scenA5 <- renderHighchart({
    visIserver(auto_four_scenA5)
  })
  
  # Vis k
  
  output$gauge3_scenA5 <- renderHighchart({
    visIserver(auto_concen_scenA5)
  })
  
  # -------------------------------------------------------------------------Scénario 26
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA6, {
    hcpxy <- highchartProxy("animated_scenA6")
    
    if(input$item_choice_scenA6 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA6 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA6 == "circle") {
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
  
  output$animated_scenA6 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA6)
  })
  
  # Vis 2
  output$ressource_surface_scenA6 <- renderHighchart({
    vis2server( a = plot_man_scenA6$taille, b = rendement_scenA6$valeur, c = plot_man_scenA6$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA6 <- renderDT({
    vis3server( a = stadephysio_scenA6)
  })
  
  # Vis 4
  
  output$period_scenA6 <- renderPlotly({
    vis4server( a = periods_scenA6)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA6 <- reactive({
    input$radio_scenA6
    if (input$radio_scenA6 == 1) {
      dataa_scenA6 <- mois(data_radio_scenA6)
    } else if ((input$radio_scenA6 == 2)) {
      dataa_scenA6 <- saison(data_radio_scenA6)
    } else if ((input$radio == 3)) {
      dataa_scenA6 <- quinzine(data_radio_scenA6)
    } else {
      dataa_scenA6 <- data_radio_scenA6
    }
    
  })
  
  
  output$plot_scenA6 <- renderHighchart({
    
    visAserver(a = bins_scenA6())
    
  })
  
  # Vis b
  output$ressour_consom_scenA6 <- renderHighchart({
    visBserver(a = data3_radio_scenA6)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA6 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA6))
  })
  
  # Vis d
  output$grain_ingestt_scenA6 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA6))
  })
  
  # Vis e
  output$youngsoldl_scenA6 <- renderInfoBox({
    visEserver(light_young_scenA6)
  })
  
  # Vis f
  
  output$youngsoldh_scenA6 <- renderInfoBox({
    visFserver(heavy_young_scenA6)
  })
  
  # Vis g
  output$femalecul_scenA6 <- renderInfoBox({
    visGserver(female_culled_scenA6)
  })
  
  # Vis l
  output$rlack_scenA6 <- renderInfoBox({
    visLserver(rangeland_lack_scenA6)
  })
  
  # Vis m
  output$glack_scenA6 <- renderInfoBox({
    visMserver(grassland_lack_scenA6)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA6 <-  renderHighchart({
    visHserver(data_ressource_scenA6)
  })
  
  # Vis i
  output$gauge1_scenA6 <- renderHighchart({
    visIserver(taux_paturage_scenA6)
  })
  
  # Vis j
  output$gauge2_scenA6 <- renderHighchart({
    visIserver(auto_four_scenA6)
  })
  
  # Vis k
  
  output$gauge3_scenA6 <- renderHighchart({
    visIserver(auto_concen_scenA6)
  })
  
  # -------------------------------------------------------------------------Scénario 27
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA7, {
    hcpxy <- highchartProxy("animated_scenA7")
    
    if(input$item_choice_scenA7 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA7 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA7 == "circle") {
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
  
  output$animated_scenA7 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA7)
  })
  
  # Vis 2
  output$ressource_surface_scenA7 <- renderHighchart({
    vis2server( a = plot_man_scenA7$taille, b = rendement_scenA7$valeur, c = plot_man_scenA7$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA7 <- renderDT({
    vis3server( a = stadephysio_scenA7)
  })
  
  # Vis 4
  
  output$period_scenA7 <- renderPlotly({
    vis4server( a = periods_scenA7)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA7 <- reactive({
    input$radio_scenA7
    if (input$radio_scenA7 == 1) {
      dataa_scenA7 <- mois(data_radio_scenA7)
    } else if ((input$radio_scenA7 == 2)) {
      dataa_scenA7 <- saison(data_radio_scenA7)
    } else if ((input$radio == 3)) {
      dataa_scenA7 <- quinzine(data_radio_scenA7)
    } else {
      dataa_scenA7 <- data_radio_scenA7
    }
    
  })
  
  
  output$plot_scenA7 <- renderHighchart({
    
    visAserver(a = bins_scenA7())
    
  })
  
  # Vis b
  output$ressour_consom_scenA7 <- renderHighchart({
    visBserver(a = data3_radio_scenA7)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA7 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA7))
  })
  
  # Vis d
  output$grain_ingestt_scenA7 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA7))
  })
  
  # Vis e
  output$youngsoldl_scenA7 <- renderInfoBox({
    visEserver(light_young_scenA7)
  })
  
  # Vis f
  
  output$youngsoldh_scenA7 <- renderInfoBox({
    visFserver(heavy_young_scenA7)
  })
  
  # Vis g
  output$femalecul_scenA7 <- renderInfoBox({
    visGserver(female_culled_scenA7)
  })
  
  # Vis l
  output$rlack_scenA7 <- renderInfoBox({
    visLserver(rangeland_lack_scenA7)
  })
  
  # Vis m
  output$glack_scenA7 <- renderInfoBox({
    visMserver(grassland_lack_scenA7)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA7 <-  renderHighchart({
    visHserver(data_ressource_scenA7)
  })
  
  # Vis i
  output$gauge1_scenA7 <- renderHighchart({
    visIserver(taux_paturage_scenA7)
  })
  
  # Vis j
  output$gauge2_scenA7 <- renderHighchart({
    visIserver(auto_four_scenA7)
  })
  
  # Vis k
  
  output$gauge3_scenA7 <- renderHighchart({
    visIserver(auto_concen_scenA7)
  })
  
  # -------------------------------------------------------------------------Scénario 28
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA8, {
    hcpxy <- highchartProxy("animated_scenA8")
    
    if(input$item_choice_scenA8 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA8 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA8 == "circle") {
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
  
  output$animated_scenA8 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA8)
  })
  
  # Vis 2
  output$ressource_surface_scenA8 <- renderHighchart({
    vis2server( a = plot_man_scenA8$taille, b = rendement_scenA8$valeur, c = plot_man_scenA8$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA8 <- renderDT({
    vis3server( a = stadephysio_scenA8)
  })
  
  # Vis 4
  
  output$period_scenA8 <- renderPlotly({
    vis4server( a = periods_scenA8)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA8 <- reactive({
    input$radio_scenA8
    if (input$radio_scenA8 == 1) {
      dataa_scenA8 <- mois(data_radio_scenA8)
    } else if ((input$radio_scenA8 == 2)) {
      dataa_scenA8 <- saison(data_radio_scenA8)
    } else if ((input$radio == 3)) {
      dataa_scenA8 <- quinzine(data_radio_scenA8)
    } else {
      dataa_scenA8 <- data_radio_scenA8
    }
    
  })
  
  
  output$plot_scenA8 <- renderHighchart({
    
    visAserver(a = bins_scenA8())
    
  })
  
  # Vis b
  output$ressour_consom_scenA8 <- renderHighchart({
    visBserver(a = data3_radio_scenA8)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA8 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA8))
  })
  
  # Vis d
  output$grain_ingestt_scenA8 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA8))
  })
  
  # Vis e
  output$youngsoldl_scenA8 <- renderInfoBox({
    visEserver(light_young_scenA8)
  })
  
  # Vis f
  
  output$youngsoldh_scenA8 <- renderInfoBox({
    visFserver(heavy_young_scenA8)
  })
  
  # Vis g
  output$femalecul_scenA8 <- renderInfoBox({
    visGserver(female_culled_scenA8)
  })
  
  # Vis l
  output$rlack_scenA8 <- renderInfoBox({
    visLserver(rangeland_lack_scenA8)
  })
  
  # Vis m
  output$glack_scenA8 <- renderInfoBox({
    visMserver(grassland_lack_scenA8)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA8 <-  renderHighchart({
    visHserver(data_ressource_scenA8)
  })
  
  # Vis i
  output$gauge1_scenA8 <- renderHighchart({
    visIserver(taux_paturage_scenA8)
  })
  
  # Vis j
  output$gauge2_scenA8 <- renderHighchart({
    visIserver(auto_four_scenA8)
  })
  
  # Vis k
  
  output$gauge3_scenA8 <- renderHighchart({
    visIserver(auto_concen_scenA8)
  })
  
  # -------------------------------------------------------------------------Scénario 29
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA8, {
    hcpxy <- highchartProxy("animated_scenA8")
    
    if(input$item_choice_scenA8 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA8 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA8 == "circle") {
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
  
  output$animated_scenA8 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA8)
  })
  
  # Vis 2
  output$ressource_surface_scenA8 <- renderHighchart({
    vis2server( a = plot_man_scenA8$taille, b = rendement_scenA8$valeur, c = plot_man_scenA8$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA8 <- renderDT({
    vis3server( a = stadephysio_scenA8)
  })
  
  # Vis 4
  
  output$period_scenA8 <- renderPlotly({
    vis4server( a = periods_scenA8)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA8 <- reactive({
    input$radio_scenA8
    if (input$radio_scenA8 == 1) {
      dataa_scenA8 <- mois(data_radio_scenA8)
    } else if ((input$radio_scenA8 == 2)) {
      dataa_scenA8 <- saison(data_radio_scenA8)
    } else if ((input$radio == 3)) {
      dataa_scenA8 <- quinzine(data_radio_scenA8)
    } else {
      dataa_scenA8 <- data_radio_scenA8
    }
    
  })
  
  
  output$plot_scenA8 <- renderHighchart({
    
    visAserver(a = bins_scenA8())
    
  })
  
  # Vis b
  output$ressour_consom_scenA8 <- renderHighchart({
    visBserver(a = data3_radio_scenA8)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA8 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA8))
  })
  
  # Vis d
  output$grain_ingestt_scenA8 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA8))
  })
  
  # Vis e
  output$youngsoldl_scenA8 <- renderInfoBox({
    visEserver(light_young_scenA8)
  })
  
  # Vis f
  
  output$youngsoldh_scenA8 <- renderInfoBox({
    visFserver(heavy_young_scenA8)
  })
  
  # Vis g
  output$femalecul_scenA8 <- renderInfoBox({
    visGserver(female_culled_scenA8)
  })
  
  # Vis l
  output$rlack_scenA8 <- renderInfoBox({
    visLserver(rangeland_lack_scenA8)
  })
  
  # Vis m
  output$glack_scenA8 <- renderInfoBox({
    visMserver(grassland_lack_scenA8)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA8 <-  renderHighchart({
    visHserver(data_ressource_scenA8)
  })
  
  # Vis i
  output$gauge1_scenA8 <- renderHighchart({
    visIserver(taux_paturage_scenA8)
  })
  
  # Vis j
  output$gauge2_scenA8 <- renderHighchart({
    visIserver(auto_four_scenA8)
  })
  
  # Vis k
  
  output$gauge3_scenA8 <- renderHighchart({
    visIserver(auto_concen_scenA8)
  })
  
  # -------------------------------------------------------------------------Scénario 29
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA9, {
    hcpxy <- highchartProxy("animated_scenA9")
    
    if(input$item_choice_scenA9 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA9 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA9 == "circle") {
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
  
  output$animated_scenA9 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA9)
  })
  
  # Vis 2
  output$ressource_surface_scenA9 <- renderHighchart({
    vis2server( a = plot_man_scenA9$taille, b = rendement_scenA9$valeur, c = plot_man_scenA9$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA9 <- renderDT({
    vis3server( a = stadephysio_scenA9)
  })
  
  # Vis 4
  
  output$period_scenA9 <- renderPlotly({
    vis4server( a = periods_scenA9)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA9 <- reactive({
    input$radio_scenA9
    if (input$radio_scenA9 == 1) {
      dataa_scenA9 <- mois(data_radio_scenA9)
    } else if ((input$radio_scenA9 == 2)) {
      dataa_scenA9 <- saison(data_radio_scenA9)
    } else if ((input$radio == 3)) {
      dataa_scenA9 <- quinzine(data_radio_scenA9)
    } else {
      dataa_scenA9 <- data_radio_scenA9
    }
    
  })
  
  
  output$plot_scenA9 <- renderHighchart({
    
    visAserver(a = bins_scenA9())
    
  })
  
  # Vis b
  output$ressour_consom_scenA9 <- renderHighchart({
    visBserver(a = data3_radio_scenA9)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA9 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA9))
  })
  
  # Vis d
  output$grain_ingestt_scenA9 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA9))
  })
  
  # Vis e
  output$youngsoldl_scenA9 <- renderInfoBox({
    visEserver(light_young_scenA9)
  })
  
  # Vis f
  
  output$youngsoldh_scenA9 <- renderInfoBox({
    visFserver(heavy_young_scenA9)
  })
  
  # Vis g
  output$femalecul_scenA9 <- renderInfoBox({
    visGserver(female_culled_scenA9)
  })
  
  # Vis l
  output$rlack_scenA9 <- renderInfoBox({
    visLserver(rangeland_lack_scenA9)
  })
  
  # Vis m
  output$glack_scenA9 <- renderInfoBox({
    visMserver(grassland_lack_scenA9)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA9 <-  renderHighchart({
    visHserver(data_ressource_scenA9)
  })
  
  # Vis i
  output$gauge1_scenA9 <- renderHighchart({
    visIserver(taux_paturage_scenA9)
  })
  
  # Vis j
  output$gauge2_scenA9 <- renderHighchart({
    visIserver(auto_four_scenA9)
  })
  
  # Vis k
  
  output$gauge3_scenA9 <- renderHighchart({
    visIserver(auto_concen_scenA9)
  })
  
  # -------------------------------------------------------------------------Scénario 210
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA10, {
    hcpxy <- highchartProxy("animated_scenA10")
    
    if(input$item_choice_scenA10 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA10 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA10 == "circle") {
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
  
  output$animated_scenA10 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA10)
  })
  
  # Vis 2
  output$ressource_surface_scenA10 <- renderHighchart({
    vis2server( a = plot_man_scenA10$taille, b = rendement_scenA10$valeur, c = plot_man_scenA10$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA10 <- renderDT({
    vis3server( a = stadephysio_scenA10)
  })
  
  # Vis 4
  
  output$period_scenA10 <- renderPlotly({
    vis4server( a = periods_scenA10)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA10 <- reactive({
    input$radio_scenA10
    if (input$radio_scenA10 == 1) {
      dataa_scenA10 <- mois(data_radio_scenA10)
    } else if ((input$radio_scenA10 == 2)) {
      dataa_scenA10 <- saison(data_radio_scenA10)
    } else if ((input$radio == 3)) {
      dataa_scenA10 <- quinzine(data_radio_scenA10)
    } else {
      dataa_scenA10 <- data_radio_scenA10
    }
    
  })
  
  
  output$plot_scenA10 <- renderHighchart({
    
    visAserver(a = bins_scenA10())
    
  })
  
  # Vis b
  output$ressour_consom_scenA10 <- renderHighchart({
    visBserver(a = data3_radio_scenA10)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA10 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA10))
  })
  
  # Vis d
  output$grain_ingestt_scenA10 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA10))
  })
  
  # Vis e
  output$youngsoldl_scenA10 <- renderInfoBox({
    visEserver(light_young_scenA10)
  })
  
  # Vis f
  
  output$youngsoldh_scenA10 <- renderInfoBox({
    visFserver(heavy_young_scenA10)
  })
  
  # Vis g
  output$femalecul_scenA10 <- renderInfoBox({
    visGserver(female_culled_scenA10)
  })
  
  # Vis l
  output$rlack_scenA10 <- renderInfoBox({
    visLserver(rangeland_lack_scenA10)
  })
  
  # Vis m
  output$glack_scenA10 <- renderInfoBox({
    visMserver(grassland_lack_scenA10)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA10 <-  renderHighchart({
    visHserver(data_ressource_scenA10)
  })
  
  # Vis i
  output$gauge1_scenA10 <- renderHighchart({
    visIserver(taux_paturage_scenA10)
  })
  
  # Vis j
  output$gauge2_scenA10 <- renderHighchart({
    visIserver(auto_four_scenA10)
  })
  
  # Vis k
  
  output$gauge3_scenA10 <- renderHighchart({
    visIserver(auto_concen_scenA10)
  })
  
  # -------------------------------------------------------------------------Scénario 211
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenA11, {
    hcpxy <- highchartProxy("animated_scenA11")
    
    if(input$item_choice_scenA11 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenA11 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenA11 == "circle") {
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
  
  output$animated_scenA11 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenA11)
  })
  
  # Vis 2
  output$ressource_surface_scenA11 <- renderHighchart({
    vis2server( a = plot_man_scenA11$taille, b = rendement_scenA11$valeur, c = plot_man_scenA11$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenA11 <- renderDT({
    vis3server( a = stadephysio_scenA11)
  })
  
  # Vis 4
  
  output$period_scenA11 <- renderPlotly({
    vis4server( a = periods_scenA11)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenA11 <- reactive({
    input$radio_scenA11
    if (input$radio_scenA11 == 1) {
      dataa_scenA11 <- mois(data_radio_scenA11)
    } else if ((input$radio_scenA11 == 2)) {
      dataa_scenA11 <- saison(data_radio_scenA11)
    } else if ((input$radio == 3)) {
      dataa_scenA11 <- quinzine(data_radio_scenA11)
    } else {
      dataa_scenA11 <- data_radio_scenA11
    }
    
  })
  
  
  output$plot_scenA11 <- renderHighchart({
    
    visAserver(a = bins_scenA11())
    
  })
  
  # Vis b
  output$ressour_consom_scenA11 <- renderHighchart({
    visBserver(a = data3_radio_scenA11)
  })
  
  # Vis c
  
  output$forage_ingestt_scenA11 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenA11))
  })
  
  # Vis d
  output$grain_ingestt_scenA11 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenA11))
  })
  
  # Vis e
  output$youngsoldl_scenA11 <- renderInfoBox({
    visEserver(light_young_scenA11)
  })
  
  # Vis f
  
  output$youngsoldh_scenA11 <- renderInfoBox({
    visFserver(heavy_young_scenA11)
  })
  
  # Vis g
  output$femalecul_scenA11 <- renderInfoBox({
    visGserver(female_culled_scenA11)
  })
  
  # Vis l
  output$rlack_scenA11 <- renderInfoBox({
    visLserver(rangeland_lack_scenA11)
  })
  
  # Vis m
  output$glack_scenA11 <- renderInfoBox({
    visMserver(grassland_lack_scenA11)
  })
  
  # Vis h
  output$ressour_consom_produit_scenA11 <-  renderHighchart({
    visHserver(data_ressource_scenA11)
  })
  
  # Vis i
  output$gauge1_scenA11 <- renderHighchart({
    visIserver(taux_paturage_scenA11)
  })
  
  # Vis j
  output$gauge2_scenA11 <- renderHighchart({
    visIserver(auto_four_scenA11)
  })
  
  # Vis k
  
  output$gauge3_scenA11 <- renderHighchart({
    visIserver(auto_concen_scenA11)
  })
  
  
  # -------------------------------------------------------------------------Scénario 31
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB1, {
    hcpxy <- highchartProxy("animated_scenB1")
    
    if(input$item_choice_scenB1 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB1 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB1 == "circle") {
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
  
  output$animated_scenB1 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB1)
  })
  
  # Vis 2
  output$ressource_surface_scenB1 <- renderHighchart({
    vis2server( a = plot_man_scenB1$taille, b = rendement_scenB1$valeur, c = plot_man_scenB1$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB1 <- renderDT({
    vis3server( a = stadephysio_scenB1)
  })
  
  # Vis 4
  
  output$period_scenB1 <- renderPlotly({
    vis4server( a = periods_scenB1)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB1 <- reactive({
    input$radio_scenB1
    if (input$radio_scenB1 == 1) {
      dataa_scenB1 <- mois(data_radio_scenB1)
    } else if ((input$radio_scenB1 == 2)) {
      dataa_scenB1 <- saison(data_radio_scenB1)
    } else if ((input$radio == 3)) {
      dataa_scenB1 <- quinzine(data_radio_scenB1)
    } else {
      dataa_scenB1 <- data_radio_scenB1
    }
    
  })
  
  
  output$plot_scenB1 <- renderHighchart({
    
    visAserver(a = bins_scenB1())
    
  })
  
  # Vis b
  output$ressour_consom_scenB1 <- renderHighchart({
    visBserver(a = data3_radio_scenB1)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB1 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB1))
  })
  
  # Vis d
  output$grain_ingestt_scenB1 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB1))
  })
  
  # Vis e
  output$youngsoldl_scenB1 <- renderInfoBox({
    visEserver(light_young_scenB1)
  })
  
  # Vis f
  
  output$youngsoldh_scenB1 <- renderInfoBox({
    visFserver(heavy_young_scenB1)
  })
  
  # Vis g
  output$femalecul_scenB1 <- renderInfoBox({
    visGserver(female_culled_scenB1)
  })
  
  # Vis l
  output$rlack_scenB1 <- renderInfoBox({
    visLserver(rangeland_lack_scenB1)
  })
  
  # Vis m
  output$glack_scenB1 <- renderInfoBox({
    visMserver(grassland_lack_scenB1)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB1 <-  renderHighchart({
    visHserver(data_ressource_scenB1)
  })
  
  # Vis i
  output$gauge1_scenB1 <- renderHighchart({
    visIserver(taux_paturage_scenB1)
  })
  
  # Vis j
  output$gauge2_scenB1 <- renderHighchart({
    visIserver(auto_four_scenB1)
  })
  
  # Vis k
  
  output$gauge3_scenB1 <- renderHighchart({
    visIserver(auto_concen_scenB1)
  })
  
  # -------------------------------------------------------------------------Scénario 32
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB2, {
    hcpxy <- highchartProxy("animated_scenB2")
    
    if(input$item_choice_scenB2 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB2 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB2 == "circle") {
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
  
  output$animated_scenB2 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB2)
  })
  
  # Vis 2
  output$ressource_surface_scenB2 <- renderHighchart({
    vis2server( a = plot_man_scenB2$taille, b = rendement_scenB2$valeur, c = plot_man_scenB2$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB2 <- renderDT({
    vis3server( a = stadephysio_scenB2)
  })
  
  # Vis 4
  
  output$period_scenB2 <- renderPlotly({
    vis4server( a = periods_scenB2)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB2 <- reactive({
    input$radio_scenB2
    if (input$radio_scenB2 == 1) {
      dataa_scenB2 <- mois(data_radio_scenB2)
    } else if ((input$radio_scenB2 == 2)) {
      dataa_scenB2 <- saison(data_radio_scenB2)
    } else if ((input$radio == 3)) {
      dataa_scenB2 <- quinzine(data_radio_scenB2)
    } else {
      dataa_scenB2 <- data_radio_scenB2
    }
    
  })
  
  
  output$plot_scenB2 <- renderHighchart({
    
    visAserver(a = bins_scenB2())
    
  })
  
  # Vis b
  output$ressour_consom_scenB2 <- renderHighchart({
    visBserver(a = data3_radio_scenB2)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB2 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB2))
  })
  
  # Vis d
  output$grain_ingestt_scenB2 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB2))
  })
  
  # Vis e
  output$youngsoldl_scenB2 <- renderInfoBox({
    visEserver(light_young_scenB2)
  })
  
  # Vis f
  
  output$youngsoldh_scenB2 <- renderInfoBox({
    visFserver(heavy_young_scenB2)
  })
  
  # Vis g
  output$femalecul_scenB2 <- renderInfoBox({
    visGserver(female_culled_scenB2)
  })
  
  # Vis l
  output$rlack_scenB2 <- renderInfoBox({
    visLserver(rangeland_lack_scenB2)
  })
  
  # Vis m
  output$glack_scenB2 <- renderInfoBox({
    visMserver(grassland_lack_scenB2)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB2 <-  renderHighchart({
    visHserver(data_ressource_scenB2)
  })
  
  # Vis i
  output$gauge1_scenB2 <- renderHighchart({
    visIserver(taux_paturage_scenB2)
  })
  
  # Vis j
  output$gauge2_scenB2 <- renderHighchart({
    visIserver(auto_four_scenB2)
  })
  
  # Vis k
  
  output$gauge3_scenB2 <- renderHighchart({
    visIserver(auto_concen_scenB2)
  })
  
  # -------------------------------------------------------------------------Scénario 33
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB3, {
    hcpxy <- highchartProxy("animated_scenB3")
    
    if(input$item_choice_scenB3 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB3 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB3 == "circle") {
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
  
  output$animated_scenB3 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB3)
  })
  
  # Vis 2
  output$ressource_surface_scenB3 <- renderHighchart({
    vis2server( a = plot_man_scenB3$taille, b = rendement_scenB3$valeur, c = plot_man_scenB3$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB3 <- renderDT({
    vis3server( a = stadephysio_scenB3)
  })
  
  # Vis 4
  
  output$period_scenB3 <- renderPlotly({
    vis4server( a = periods_scenB3)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB3 <- reactive({
    input$radio_scenB3
    if (input$radio_scenB3 == 1) {
      dataa_scenB3 <- mois(data_radio_scenB3)
    } else if ((input$radio_scenB3 == 2)) {
      dataa_scenB3 <- saison(data_radio_scenB3)
    } else if ((input$radio == 3)) {
      dataa_scenB3 <- quinzine(data_radio_scenB3)
    } else {
      dataa_scenB3 <- data_radio_scenB3
    }
    
  })
  
  
  output$plot_scenB3 <- renderHighchart({
    
    visAserver(a = bins_scenB3())
    
  })
  
  # Vis b
  output$ressour_consom_scenB3 <- renderHighchart({
    visBserver(a = data3_radio_scenB3)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB3 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB3))
  })
  
  # Vis d
  output$grain_ingestt_scenB3 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB3))
  })
  
  # Vis e
  output$youngsoldl_scenB3 <- renderInfoBox({
    visEserver(light_young_scenB3)
  })
  
  # Vis f
  
  output$youngsoldh_scenB3 <- renderInfoBox({
    visFserver(heavy_young_scenB3)
  })
  
  # Vis g
  output$femalecul_scenB3 <- renderInfoBox({
    visGserver(female_culled_scenB3)
  })
  
  # Vis l
  output$rlack_scenB3 <- renderInfoBox({
    visLserver(rangeland_lack_scenB3)
  })
  
  # Vis m
  output$glack_scenB3 <- renderInfoBox({
    visMserver(grassland_lack_scenB3)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB3 <-  renderHighchart({
    visHserver(data_ressource_scenB3)
  })
  
  # Vis i
  output$gauge1_scenB3 <- renderHighchart({
    visIserver(taux_paturage_scenB3)
  })
  
  # Vis j
  output$gauge2_scenB3 <- renderHighchart({
    visIserver(auto_four_scenB3)
  })
  
  # Vis k
  
  output$gauge3_scenB3 <- renderHighchart({
    visIserver(auto_concen_scenB3)
  })
  
  # -------------------------------------------------------------------------Scénario 34
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB4, {
    hcpxy <- highchartProxy("animated_scenB4")
    
    if(input$item_choice_scenB4 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB4 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB4 == "circle") {
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
  
  output$animated_scenB4 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB4)
  })
  
  # Vis 2
  output$ressource_surface_scenB4 <- renderHighchart({
    vis2server( a = plot_man_scenB4$taille, b = rendement_scenB4$valeur, c = plot_man_scenB4$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB4 <- renderDT({
    vis3server( a = stadephysio_scenB4)
  })
  
  # Vis 4
  
  output$period_scenB4 <- renderPlotly({
    vis4server( a = periods_scenB4)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB4 <- reactive({
    input$radio_scenB4
    if (input$radio_scenB4 == 1) {
      dataa_scenB4 <- mois(data_radio_scenB4)
    } else if ((input$radio_scenB4 == 2)) {
      dataa_scenB4 <- saison(data_radio_scenB4)
    } else if ((input$radio == 3)) {
      dataa_scenB4 <- quinzine(data_radio_scenB4)
    } else {
      dataa_scenB4 <- data_radio_scenB4
    }
    
  })
  
  
  output$plot_scenB4 <- renderHighchart({
    
    visAserver(a = bins_scenB4())
    
  })
  
  # Vis b
  output$ressour_consom_scenB4 <- renderHighchart({
    visBserver(a = data3_radio_scenB4)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB4 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB4))
  })
  
  # Vis d
  output$grain_ingestt_scenB4 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB4))
  })
  
  # Vis e
  output$youngsoldl_scenB4 <- renderInfoBox({
    visEserver(light_young_scenB4)
  })
  
  # Vis f
  
  output$youngsoldh_scenB4 <- renderInfoBox({
    visFserver(heavy_young_scenB4)
  })
  
  # Vis g
  output$femalecul_scenB4 <- renderInfoBox({
    visGserver(female_culled_scenB4)
  })
  
  # Vis l
  output$rlack_scenB4 <- renderInfoBox({
    visLserver(rangeland_lack_scenB4)
  })
  
  # Vis m
  output$glack_scenB4 <- renderInfoBox({
    visMserver(grassland_lack_scenB4)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB4 <-  renderHighchart({
    visHserver(data_ressource_scenB4)
  })
  
  # Vis i
  output$gauge1_scenB4 <- renderHighchart({
    visIserver(taux_paturage_scenB4)
  })
  
  # Vis j
  output$gauge2_scenB4 <- renderHighchart({
    visIserver(auto_four_scenB4)
  })
  
  # Vis k
  
  output$gauge3_scenB4 <- renderHighchart({
    visIserver(auto_concen_scenB4)
  })
  
  # -------------------------------------------------------------------------Scénario 35
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB5, {
    hcpxy <- highchartProxy("animated_scenB5")
    
    if(input$item_choice_scenB5 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB5 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB5 == "circle") {
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
  
  output$animated_scenB5 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB5)
  })
  
  # Vis 2
  output$ressource_surface_scenB5 <- renderHighchart({
    vis2server( a = plot_man_scenB5$taille, b = rendement_scenB5$valeur, c = plot_man_scenB5$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB5 <- renderDT({
    vis3server( a = stadephysio_scenB5)
  })
  
  # Vis 4
  
  output$period_scenB5 <- renderPlotly({
    vis4server( a = periods_scenB5)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB5 <- reactive({
    input$radio_scenB5
    if (input$radio_scenB5 == 1) {
      dataa_scenB5 <- mois(data_radio_scenB5)
    } else if ((input$radio_scenB5 == 2)) {
      dataa_scenB5 <- saison(data_radio_scenB5)
    } else if ((input$radio == 3)) {
      dataa_scenB5 <- quinzine(data_radio_scenB5)
    } else {
      dataa_scenB5 <- data_radio_scenB5
    }
    
  })
  
  
  output$plot_scenB5 <- renderHighchart({
    
    visAserver(a = bins_scenB5())
    
  })
  
  # Vis b
  output$ressour_consom_scenB5 <- renderHighchart({
    visBserver(a = data3_radio_scenB5)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB5 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB5))
  })
  
  # Vis d
  output$grain_ingestt_scenB5 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB5))
  })
  
  # Vis e
  output$youngsoldl_scenB5 <- renderInfoBox({
    visEserver(light_young_scenB5)
  })
  
  # Vis f
  
  output$youngsoldh_scenB5 <- renderInfoBox({
    visFserver(heavy_young_scenB5)
  })
  
  # Vis g
  output$femalecul_scenB5 <- renderInfoBox({
    visGserver(female_culled_scenB5)
  })
  
  # Vis l
  output$rlack_scenB5 <- renderInfoBox({
    visLserver(rangeland_lack_scenB5)
  })
  
  # Vis m
  output$glack_scenB5 <- renderInfoBox({
    visMserver(grassland_lack_scenB5)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB5 <-  renderHighchart({
    visHserver(data_ressource_scenB5)
  })
  
  # Vis i
  output$gauge1_scenB5 <- renderHighchart({
    visIserver(taux_paturage_scenB5)
  })
  
  # Vis j
  output$gauge2_scenB5 <- renderHighchart({
    visIserver(auto_four_scenB5)
  })
  
  # Vis k
  
  output$gauge3_scenB5 <- renderHighchart({
    visIserver(auto_concen_scenB5)
  })
  
  
  # -------------------------------------------------------------------------Scénario 36
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB6, {
    hcpxy <- highchartProxy("animated_scenB6")
    
    if(input$item_choice_scenB6 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB6 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB6 == "circle") {
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
  
  output$animated_scenB6 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB6)
  })
  
  # Vis 2
  output$ressource_surface_scenB6 <- renderHighchart({
    vis2server( a = plot_man_scenB6$taille, b = rendement_scenB6$valeur, c = plot_man_scenB6$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB6 <- renderDT({
    vis3server( a = stadephysio_scenB6)
  })
  
  # Vis 4
  
  output$period_scenB6 <- renderPlotly({
    vis4server( a = periods_scenB6)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB6 <- reactive({
    input$radio_scenB6
    if (input$radio_scenB6 == 1) {
      dataa_scenB6 <- mois(data_radio_scenB6)
    } else if ((input$radio_scenB6 == 2)) {
      dataa_scenB6 <- saison(data_radio_scenB6)
    } else if ((input$radio == 3)) {
      dataa_scenB6 <- quinzine(data_radio_scenB6)
    } else {
      dataa_scenB6 <- data_radio_scenB6
    }
    
  })
  
  
  output$plot_scenB6 <- renderHighchart({
    
    visAserver(a = bins_scenB6())
    
  })
  
  # Vis b
  output$ressour_consom_scenB6 <- renderHighchart({
    visBserver(a = data3_radio_scenB6)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB6 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB6))
  })
  
  # Vis d
  output$grain_ingestt_scenB6 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB6))
  })
  
  # Vis e
  output$youngsoldl_scenB6 <- renderInfoBox({
    visEserver(light_young_scenB6)
  })
  
  # Vis f
  
  output$youngsoldh_scenB6 <- renderInfoBox({
    visFserver(heavy_young_scenB6)
  })
  
  # Vis g
  output$femalecul_scenB6 <- renderInfoBox({
    visGserver(female_culled_scenB6)
  })
  
  # Vis l
  output$rlack_scenB6 <- renderInfoBox({
    visLserver(rangeland_lack_scenB6)
  })
  
  # Vis m
  output$glack_scenB6 <- renderInfoBox({
    visMserver(grassland_lack_scenB6)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB6 <-  renderHighchart({
    visHserver(data_ressource_scenB6)
  })
  
  # Vis i
  output$gauge1_scenB6 <- renderHighchart({
    visIserver(taux_paturage_scenB6)
  })
  
  # Vis j
  output$gauge2_scenB6 <- renderHighchart({
    visIserver(auto_four_scenB6)
  })
  
  # Vis k
  
  output$gauge3_scenB6 <- renderHighchart({
    visIserver(auto_concen_scenB6)
  })
  
  
  # -------------------------------------------------------------------------Scénario 37
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB7, {
    hcpxy <- highchartProxy("animated_scenB7")
    
    if(input$item_choice_scenB7 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB7 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB7 == "circle") {
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
  
  output$animated_scenB7 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB7)
  })
  
  # Vis 2
  output$ressource_surface_scenB7 <- renderHighchart({
    vis2server( a = plot_man_scenB7$taille, b = rendement_scenB7$valeur, c = plot_man_scenB7$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB7 <- renderDT({
    vis3server( a = stadephysio_scenB7)
  })
  
  # Vis 4
  
  output$period_scenB7 <- renderPlotly({
    vis4server( a = periods_scenB7)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB7 <- reactive({
    input$radio_scenB7
    if (input$radio_scenB7 == 1) {
      dataa_scenB7 <- mois(data_radio_scenB7)
    } else if ((input$radio_scenB7 == 2)) {
      dataa_scenB7 <- saison(data_radio_scenB7)
    } else if ((input$radio == 3)) {
      dataa_scenB7 <- quinzine(data_radio_scenB7)
    } else {
      dataa_scenB7 <- data_radio_scenB7
    }
    
  })
  
  
  output$plot_scenB7 <- renderHighchart({
    
    visAserver(a = bins_scenB7())
    
  })
  
  # Vis b
  output$ressour_consom_scenB7 <- renderHighchart({
    visBserver(a = data3_radio_scenB7)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB7 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB7))
  })
  
  # Vis d
  output$grain_ingestt_scenB7 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB7))
  })
  
  # Vis e
  output$youngsoldl_scenB7 <- renderInfoBox({
    visEserver(light_young_scenB7)
  })
  
  # Vis f
  
  output$youngsoldh_scenB7 <- renderInfoBox({
    visFserver(heavy_young_scenB7)
  })
  
  # Vis g
  output$femalecul_scenB7 <- renderInfoBox({
    visGserver(female_culled_scenB7)
  })
  
  # Vis l
  output$rlack_scenB7 <- renderInfoBox({
    visLserver(rangeland_lack_scenB7)
  })
  
  # Vis m
  output$glack_scenB7 <- renderInfoBox({
    visMserver(grassland_lack_scenB7)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB7 <-  renderHighchart({
    visHserver(data_ressource_scenB7)
  })
  
  # Vis i
  output$gauge1_scenB7 <- renderHighchart({
    visIserver(taux_paturage_scenB7)
  })
  
  # Vis j
  output$gauge2_scenB7 <- renderHighchart({
    visIserver(auto_four_scenB7)
  })
  
  # Vis k
  
  output$gauge3_scenB7 <- renderHighchart({
    visIserver(auto_concen_scenB7)
  })
  
  # -------------------------------------------------------------------------Scénario 38
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB8, {
    hcpxy <- highchartProxy("animated_scenB8")
    
    if(input$item_choice_scenB8 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB8 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB8 == "circle") {
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
  
  output$animated_scenB8 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB8)
  })
  
  # Vis 2
  output$ressource_surface_scenB8 <- renderHighchart({
    vis2server( a = plot_man_scenB8$taille, b = rendement_scenB8$valeur, c = plot_man_scenB8$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB8 <- renderDT({
    vis3server( a = stadephysio_scenB8)
  })
  
  # Vis 4
  
  output$period_scenB8 <- renderPlotly({
    vis4server( a = periods_scenB8)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB8 <- reactive({
    input$radio_scenB8
    if (input$radio_scenB8 == 1) {
      dataa_scenB8 <- mois(data_radio_scenB8)
    } else if ((input$radio_scenB8 == 2)) {
      dataa_scenB8 <- saison(data_radio_scenB8)
    } else if ((input$radio == 3)) {
      dataa_scenB8 <- quinzine(data_radio_scenB8)
    } else {
      dataa_scenB8 <- data_radio_scenB8
    }
    
  })
  
  
  output$plot_scenB8 <- renderHighchart({
    
    visAserver(a = bins_scenB8())
    
  })
  
  # Vis b
  output$ressour_consom_scenB8 <- renderHighchart({
    visBserver(a = data3_radio_scenB8)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB8 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB8))
  })
  
  # Vis d
  output$grain_ingestt_scenB8 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB8))
  })
  
  # Vis e
  output$youngsoldl_scenB8 <- renderInfoBox({
    visEserver(light_young_scenB8)
  })
  
  # Vis f
  
  output$youngsoldh_scenB8 <- renderInfoBox({
    visFserver(heavy_young_scenB8)
  })
  
  # Vis g
  output$femalecul_scenB8 <- renderInfoBox({
    visGserver(female_culled_scenB8)
  })
  
  # Vis l
  output$rlack_scenB8 <- renderInfoBox({
    visLserver(rangeland_lack_scenB8)
  })
  
  # Vis m
  output$glack_scenB8 <- renderInfoBox({
    visMserver(grassland_lack_scenB8)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB8 <-  renderHighchart({
    visHserver(data_ressource_scenB8)
  })
  
  # Vis i
  output$gauge1_scenB8 <- renderHighchart({
    visIserver(taux_paturage_scenB8)
  })
  
  # Vis j
  output$gauge2_scenB8 <- renderHighchart({
    visIserver(auto_four_scenB8)
  })
  
  # Vis k
  
  output$gauge3_scenB8 <- renderHighchart({
    visIserver(auto_concen_scenB8)
  })
  
  # -------------------------------------------------------------------------Scénario 39
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB9, {
    hcpxy <- highchartProxy("animated_scenB9")
    
    if(input$item_choice_scenB9 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB9 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB9 == "circle") {
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
  
  output$animated_scenB9 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB9)
  })
  
  # Vis 2
  output$ressource_surface_scenB9 <- renderHighchart({
    vis2server( a = plot_man_scenB9$taille, b = rendement_scenB9$valeur, c = plot_man_scenB9$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB9 <- renderDT({
    vis3server( a = stadephysio_scenB9)
  })
  
  # Vis 4
  
  output$period_scenB9 <- renderPlotly({
    vis4server( a = periods_scenB9)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB9 <- reactive({
    input$radio_scenB9
    if (input$radio_scenB9 == 1) {
      dataa_scenB9 <- mois(data_radio_scenB9)
    } else if ((input$radio_scenB9 == 2)) {
      dataa_scenB9 <- saison(data_radio_scenB9)
    } else if ((input$radio == 3)) {
      dataa_scenB9 <- quinzine(data_radio_scenB9)
    } else {
      dataa_scenB9 <- data_radio_scenB9
    }
    
  })
  
  
  output$plot_scenB9 <- renderHighchart({
    
    visAserver(a = bins_scenB9())
    
  })
  
  # Vis b
  output$ressour_consom_scenB9 <- renderHighchart({
    visBserver(a = data3_radio_scenB9)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB9 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB9))
  })
  
  # Vis d
  output$grain_ingestt_scenB9 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB9))
  })
  
  # Vis e
  output$youngsoldl_scenB9 <- renderInfoBox({
    visEserver(light_young_scenB9)
  })
  
  # Vis f
  
  output$youngsoldh_scenB9 <- renderInfoBox({
    visFserver(heavy_young_scenB9)
  })
  
  # Vis g
  output$femalecul_scenB9 <- renderInfoBox({
    visGserver(female_culled_scenB9)
  })
  
  # Vis l
  output$rlack_scenB9 <- renderInfoBox({
    visLserver(rangeland_lack_scenB9)
  })
  
  # Vis m
  output$glack_scenB9 <- renderInfoBox({
    visMserver(grassland_lack_scenB9)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB9 <-  renderHighchart({
    visHserver(data_ressource_scenB9)
  })
  
  # Vis i
  output$gauge1_scenB9 <- renderHighchart({
    visIserver(taux_paturage_scenB9)
  })
  
  # Vis j
  output$gauge2_scenB9 <- renderHighchart({
    visIserver(auto_four_scenB9)
  })
  
  # Vis k
  
  output$gauge3_scenB9 <- renderHighchart({
    visIserver(auto_concen_scenB9)
  })
  
  # -------------------------------------------------------------------------Scénario 310
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenB10, {
    hcpxy <- highchartProxy("animated_scenB10")
    
    if(input$item_choice_scenB10 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenB10 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenB10 == "circle") {
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
  
  output$animated_scenB10 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenB10)
  })
  
  # Vis 2
  output$ressource_surface_scenB10 <- renderHighchart({
    vis2server( a = plot_man_scenB10$taille, b = rendement_scenB10$valeur, c = plot_man_scenB10$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenB10 <- renderDT({
    vis3server( a = stadephysio_scenB10)
  })
  
  # Vis 4
  
  output$period_scenB10 <- renderPlotly({
    vis4server( a = periods_scenB10)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenB10 <- reactive({
    input$radio_scenB10
    if (input$radio_scenB10 == 1) {
      dataa_scenB10 <- mois(data_radio_scenB10)
    } else if ((input$radio_scenB10 == 2)) {
      dataa_scenB10 <- saison(data_radio_scenB10)
    } else if ((input$radio == 3)) {
      dataa_scenB10 <- quinzine(data_radio_scenB10)
    } else {
      dataa_scenB10 <- data_radio_scenB10
    }
    
  })
  
  
  output$plot_scenB10 <- renderHighchart({
    
    visAserver(a = bins_scenB10())
    
  })
  
  # Vis b
  output$ressour_consom_scenB10 <- renderHighchart({
    visBserver(a = data3_radio_scenB10)
  })
  
  # Vis c
  
  output$forage_ingestt_scenB10 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenB10))
  })
  
  # Vis d
  output$grain_ingestt_scenB10 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenB10))
  })
  
  # Vis e
  output$youngsoldl_scenB10 <- renderInfoBox({
    visEserver(light_young_scenB10)
  })
  
  # Vis f
  
  output$youngsoldh_scenB10 <- renderInfoBox({
    visFserver(heavy_young_scenB10)
  })
  
  # Vis g
  output$femalecul_scenB10 <- renderInfoBox({
    visGserver(female_culled_scenB10)
  })
  
  # Vis l
  output$rlack_scenB10 <- renderInfoBox({
    visLserver(rangeland_lack_scenB10)
  })
  
  # Vis m
  output$glack_scenB10 <- renderInfoBox({
    visMserver(grassland_lack_scenB10)
  })
  
  # Vis h
  output$ressour_consom_produit_scenB10 <-  renderHighchart({
    visHserver(data_ressource_scenB10)
  })
  
  # Vis i
  output$gauge1_scenB10 <- renderHighchart({
    visIserver(taux_paturage_scenB10)
  })
  
  # Vis j
  output$gauge2_scenB10 <- renderHighchart({
    visIserver(auto_four_scenB10)
  })
  
  # Vis k
  
  output$gauge3_scenB10 <- renderHighchart({
    visIserver(auto_concen_scenB10)
  })
  
  # -------------------------------------------------------------------------Scénario 41
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC1, {
    hcpxy <- highchartProxy("animated_scenC1")
    
    if(input$item_choice_scenC1 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC1 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC1 == "circle") {
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
  
  output$animated_scenC1 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC1)
  })
  
  # Vis 2
  output$ressource_surface_scenC1 <- renderHighchart({
    vis2server( a = plot_man_scenC1$taille, b = rendement_scenC1$valeur, c = plot_man_scenC1$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC1 <- renderDT({
    vis3server( a = stadephysio_scenC1)
  })
  
  # Vis 4
  
  output$period_scenC1 <- renderPlotly({
    vis4server( a = periods_scenC1)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC1 <- reactive({
    input$radio_scenC1
    if (input$radio_scenC1 == 1) {
      dataa_scenC1 <- mois(data_radio_scenC1)
    } else if ((input$radio_scenC1 == 2)) {
      dataa_scenC1 <- saison(data_radio_scenC1)
    } else if ((input$radio == 3)) {
      dataa_scenC1 <- quinzine(data_radio_scenC1)
    } else {
      dataa_scenC1 <- data_radio_scenC1
    }
    
  })
  
  
  output$plot_scenC1 <- renderHighchart({
    
    visAserver(a = bins_scenC1())
    
  })
  
  # Vis b
  output$ressour_consom_scenC1 <- renderHighchart({
    visBserver(a = data3_radio_scenC1)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC1 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC1))
  })
  
  # Vis d
  output$grain_ingestt_scenC1 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC1))
  })
  
  # Vis e
  output$youngsoldl_scenC1 <- renderInfoBox({
    visEserver(light_young_scenC1)
  })
  
  # Vis f
  
  output$youngsoldh_scenC1 <- renderInfoBox({
    visFserver(heavy_young_scenC1)
  })
  
  # Vis g
  output$femalecul_scenC1 <- renderInfoBox({
    visGserver(female_culled_scenC1)
  })
  
  # Vis l
  output$rlack_scenC1 <- renderInfoBox({
    visLserver(rangeland_lack_scenC1)
  })
  
  # Vis m
  output$glack_scenC1 <- renderInfoBox({
    visMserver(grassland_lack_scenC1)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC1 <-  renderHighchart({
    visHserver(data_ressource_scenC1)
  })
  
  # Vis i
  output$gauge1_scenC1 <- renderHighchart({
    visIserver(taux_paturage_scenC1)
  })
  
  # Vis j
  output$gauge2_scenC1 <- renderHighchart({
    visIserver(auto_four_scenC1)
  })
  
  # Vis k
  
  output$gauge3_scenC1 <- renderHighchart({
    visIserver(auto_concen_scenC1)
  })
  
  # -------------------------------------------------------------------------Scénario 42
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC2, {
    hcpxy <- highchartProxy("animated_scenC2")
    
    if(input$item_choice_scenC2 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC2 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC2 == "circle") {
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
  
  output$animated_scenC2 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC2)
  })
  
  # Vis 2
  output$ressource_surface_scenC2 <- renderHighchart({
    vis2server( a = plot_man_scenC2$taille, b = rendement_scenC2$valeur, c = plot_man_scenC2$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC2 <- renderDT({
    vis3server( a = stadephysio_scenC2)
  })
  
  # Vis 4
  
  output$period_scenC2 <- renderPlotly({
    vis4server( a = periods_scenC2)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC2 <- reactive({
    input$radio_scenC2
    if (input$radio_scenC2 == 1) {
      dataa_scenC2 <- mois(data_radio_scenC2)
    } else if ((input$radio_scenC2 == 2)) {
      dataa_scenC2 <- saison(data_radio_scenC2)
    } else if ((input$radio == 3)) {
      dataa_scenC2 <- quinzine(data_radio_scenC2)
    } else {
      dataa_scenC2 <- data_radio_scenC2
    }
    
  })
  
  
  output$plot_scenC2 <- renderHighchart({
    
    visAserver(a = bins_scenC2())
    
  })
  
  # Vis b
  output$ressour_consom_scenC2 <- renderHighchart({
    visBserver(a = data3_radio_scenC2)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC2 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC2))
  })
  
  # Vis d
  output$grain_ingestt_scenC2 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC2))
  })
  
  # Vis e
  output$youngsoldl_scenC2 <- renderInfoBox({
    visEserver(light_young_scenC2)
  })
  
  # Vis f
  
  output$youngsoldh_scenC2 <- renderInfoBox({
    visFserver(heavy_young_scenC2)
  })
  
  # Vis g
  output$femalecul_scenC2 <- renderInfoBox({
    visGserver(female_culled_scenC2)
  })
  
  # Vis l
  output$rlack_scenC2 <- renderInfoBox({
    visLserver(rangeland_lack_scenC2)
  })
  
  # Vis m
  output$glack_scenC2 <- renderInfoBox({
    visMserver(grassland_lack_scenC2)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC2 <-  renderHighchart({
    visHserver(data_ressource_scenC2)
  })
  
  # Vis i
  output$gauge1_scenC2 <- renderHighchart({
    visIserver(taux_paturage_scenC2)
  })
  
  # Vis j
  output$gauge2_scenC2 <- renderHighchart({
    visIserver(auto_four_scenC2)
  })
  
  # Vis k
  
  output$gauge3_scenC2 <- renderHighchart({
    visIserver(auto_concen_scenC2)
  })
  
  # -------------------------------------------------------------------------Scénario 43
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC3, {
    hcpxy <- highchartProxy("animated_scenC3")
    
    if(input$item_choice_scenC3 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC3 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC3 == "circle") {
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
  
  output$animated_scenC3 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC3)
  })
  
  # Vis 2
  output$ressource_surface_scenC3 <- renderHighchart({
    vis2server( a = plot_man_scenC3$taille, b = rendement_scenC3$valeur, c = plot_man_scenC3$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC3 <- renderDT({
    vis3server( a = stadephysio_scenC3)
  })
  
  # Vis 4
  
  output$period_scenC3 <- renderPlotly({
    vis4server( a = periods_scenC3)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC3 <- reactive({
    input$radio_scenC3
    if (input$radio_scenC3 == 1) {
      dataa_scenC3 <- mois(data_radio_scenC3)
    } else if ((input$radio_scenC3 == 2)) {
      dataa_scenC3 <- saison(data_radio_scenC3)
    } else if ((input$radio == 3)) {
      dataa_scenC3 <- quinzine(data_radio_scenC3)
    } else {
      dataa_scenC3 <- data_radio_scenC3
    }
    
  })
  
  
  output$plot_scenC3 <- renderHighchart({
    
    visAserver(a = bins_scenC3())
    
  })
  
  # Vis b
  output$ressour_consom_scenC3 <- renderHighchart({
    visBserver(a = data3_radio_scenC3)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC3 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC3))
  })
  
  # Vis d
  output$grain_ingestt_scenC3 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC3))
  })
  
  # Vis e
  output$youngsoldl_scenC3 <- renderInfoBox({
    visEserver(light_young_scenC3)
  })
  
  # Vis f
  
  output$youngsoldh_scenC3 <- renderInfoBox({
    visFserver(heavy_young_scenC3)
  })
  
  # Vis g
  output$femalecul_scenC3 <- renderInfoBox({
    visGserver(female_culled_scenC3)
  })
  
  # Vis l
  output$rlack_scenC3 <- renderInfoBox({
    visLserver(rangeland_lack_scenC3)
  })
  
  # Vis m
  output$glack_scenC3 <- renderInfoBox({
    visMserver(grassland_lack_scenC3)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC3 <-  renderHighchart({
    visHserver(data_ressource_scenC3)
  })
  
  # Vis i
  output$gauge1_scenC3 <- renderHighchart({
    visIserver(taux_paturage_scenC3)
  })
  
  # Vis j
  output$gauge2_scenC3 <- renderHighchart({
    visIserver(auto_four_scenC3)
  })
  
  # Vis k
  
  output$gauge3_scenC3 <- renderHighchart({
    visIserver(auto_concen_scenC3)
  })
  
  # -------------------------------------------------------------------------Scénario 44
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC4, {
    hcpxy <- highchartProxy("animated_scenC4")
    
    if(input$item_choice_scenC4 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC4 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC4 == "circle") {
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
  
  output$animated_scenC4 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC4)
  })
  
  # Vis 2
  output$ressource_surface_scenC4 <- renderHighchart({
    vis2server( a = plot_man_scenC4$taille, b = rendement_scenC4$valeur, c = plot_man_scenC4$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC4 <- renderDT({
    vis3server( a = stadephysio_scenC4)
  })
  
  # Vis 4
  
  output$period_scenC4 <- renderPlotly({
    vis4server( a = periods_scenC4)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC4 <- reactive({
    input$radio_scenC4
    if (input$radio_scenC4 == 1) {
      dataa_scenC4 <- mois(data_radio_scenC4)
    } else if ((input$radio_scenC4 == 2)) {
      dataa_scenC4 <- saison(data_radio_scenC4)
    } else if ((input$radio == 3)) {
      dataa_scenC4 <- quinzine(data_radio_scenC4)
    } else {
      dataa_scenC4 <- data_radio_scenC4
    }
    
  })
  
  
  output$plot_scenC4 <- renderHighchart({
    
    visAserver(a = bins_scenC4())
    
  })
  
  # Vis b
  output$ressour_consom_scenC4 <- renderHighchart({
    visBserver(a = data3_radio_scenC4)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC4 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC4))
  })
  
  # Vis d
  output$grain_ingestt_scenC4 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC4))
  })
  
  # Vis e
  output$youngsoldl_scenC4 <- renderInfoBox({
    visEserver(light_young_scenC4)
  })
  
  # Vis f
  
  output$youngsoldh_scenC4 <- renderInfoBox({
    visFserver(heavy_young_scenC4)
  })
  
  # Vis g
  output$femalecul_scenC4 <- renderInfoBox({
    visGserver(female_culled_scenC4)
  })
  
  # Vis l
  output$rlack_scenC4 <- renderInfoBox({
    visLserver(rangeland_lack_scenC4)
  })
  
  # Vis m
  output$glack_scenC4 <- renderInfoBox({
    visMserver(grassland_lack_scenC4)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC4 <-  renderHighchart({
    visHserver(data_ressource_scenC4)
  })
  
  # Vis i
  output$gauge1_scenC4 <- renderHighchart({
    visIserver(taux_paturage_scenC4)
  })
  
  # Vis j
  output$gauge2_scenC4 <- renderHighchart({
    visIserver(auto_four_scenC4)
  })
  
  # Vis k
  
  output$gauge3_scenC4 <- renderHighchart({
    visIserver(auto_concen_scenC4)
  })
  
  # -------------------------------------------------------------------------Scénario 45
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC5, {
    hcpxy <- highchartProxy("animated_scenC5")
    
    if(input$item_choice_scenC5 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC5 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC5 == "circle") {
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
  
  output$animated_scenC5 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC5)
  })
  
  # Vis 2
  output$ressource_surface_scenC5 <- renderHighchart({
    vis2server( a = plot_man_scenC5$taille, b = rendement_scenC5$valeur, c = plot_man_scenC5$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC5 <- renderDT({
    vis3server( a = stadephysio_scenC5)
  })
  
  # Vis 4
  
  output$period_scenC5 <- renderPlotly({
    vis4server( a = periods_scenC5)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC5 <- reactive({
    input$radio_scenC5
    if (input$radio_scenC5 == 1) {
      dataa_scenC5 <- mois(data_radio_scenC5)
    } else if ((input$radio_scenC5 == 2)) {
      dataa_scenC5 <- saison(data_radio_scenC5)
    } else if ((input$radio == 3)) {
      dataa_scenC5 <- quinzine(data_radio_scenC5)
    } else {
      dataa_scenC5 <- data_radio_scenC5
    }
    
  })
  
  
  output$plot_scenC5 <- renderHighchart({
    
    visAserver(a = bins_scenC5())
    
  })
  
  # Vis b
  output$ressour_consom_scenC5 <- renderHighchart({
    visBserver(a = data3_radio_scenC5)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC5 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC5))
  })
  
  # Vis d
  output$grain_ingestt_scenC5 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC5))
  })
  
  # Vis e
  output$youngsoldl_scenC5 <- renderInfoBox({
    visEserver(light_young_scenC5)
  })
  
  # Vis f
  
  output$youngsoldh_scenC5 <- renderInfoBox({
    visFserver(heavy_young_scenC5)
  })
  
  # Vis g
  output$femalecul_scenC5 <- renderInfoBox({
    visGserver(female_culled_scenC5)
  })
  
  # Vis l
  output$rlack_scenC5 <- renderInfoBox({
    visLserver(rangeland_lack_scenC5)
  })
  
  # Vis m
  output$glack_scenC5 <- renderInfoBox({
    visMserver(grassland_lack_scenC5)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC5 <-  renderHighchart({
    visHserver(data_ressource_scenC5)
  })
  
  # Vis i
  output$gauge1_scenC5 <- renderHighchart({
    visIserver(taux_paturage_scenC5)
  })
  
  # Vis j
  output$gauge2_scenC5 <- renderHighchart({
    visIserver(auto_four_scenC5)
  })
  
  # Vis k
  
  output$gauge3_scenC5 <- renderHighchart({
    visIserver(auto_concen_scenC5)
  })
  
  # -------------------------------------------------------------------------Scénario 46
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC6, {
    hcpxy <- highchartProxy("animated_scenC6")
    
    if(input$item_choice_scenC6 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC6 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC6 == "circle") {
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
  
  output$animated_scenC6 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC6)
  })
  
  # Vis 2
  output$ressource_surface_scenC6 <- renderHighchart({
    vis2server( a = plot_man_scenC6$taille, b = rendement_scenC6$valeur, c = plot_man_scenC6$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC6 <- renderDT({
    vis3server( a = stadephysio_scenC6)
  })
  
  # Vis 4
  
  output$period_scenC6 <- renderPlotly({
    vis4server( a = periods_scenC6)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC6 <- reactive({
    input$radio_scenC6
    if (input$radio_scenC6 == 1) {
      dataa_scenC6 <- mois(data_radio_scenC6)
    } else if ((input$radio_scenC6 == 2)) {
      dataa_scenC6 <- saison(data_radio_scenC6)
    } else if ((input$radio == 3)) {
      dataa_scenC6 <- quinzine(data_radio_scenC6)
    } else {
      dataa_scenC6 <- data_radio_scenC6
    }
    
  })
  
  
  output$plot_scenC6 <- renderHighchart({
    
    visAserver(a = bins_scenC6())
    
  })
  
  # Vis b
  output$ressour_consom_scenC6 <- renderHighchart({
    visBserver(a = data3_radio_scenC6)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC6 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC6))
  })
  
  # Vis d
  output$grain_ingestt_scenC6 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC6))
  })
  
  # Vis e
  output$youngsoldl_scenC6 <- renderInfoBox({
    visEserver(light_young_scenC6)
  })
  
  # Vis f
  
  output$youngsoldh_scenC6 <- renderInfoBox({
    visFserver(heavy_young_scenC6)
  })
  
  # Vis g
  output$femalecul_scenC6 <- renderInfoBox({
    visGserver(female_culled_scenC6)
  })
  
  # Vis l
  output$rlack_scenC6 <- renderInfoBox({
    visLserver(rangeland_lack_scenC6)
  })
  
  # Vis m
  output$glack_scenC6 <- renderInfoBox({
    visMserver(grassland_lack_scenC6)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC6 <-  renderHighchart({
    visHserver(data_ressource_scenC6)
  })
  
  # Vis i
  output$gauge1_scenC6 <- renderHighchart({
    visIserver(taux_paturage_scenC6)
  })
  
  # Vis j
  output$gauge2_scenC6 <- renderHighchart({
    visIserver(auto_four_scenC6)
  })
  
  # Vis k
  
  output$gauge3_scenC6 <- renderHighchart({
    visIserver(auto_concen_scenC6)
  })
  
  # -------------------------------------------------------------------------Scénario 47
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC7, {
    hcpxy <- highchartProxy("animated_scenC7")
    
    if(input$item_choice_scenC7 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC7 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC7 == "circle") {
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
  
  output$animated_scenC7 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC7)
  })
  
  # Vis 2
  output$ressource_surface_scenC7 <- renderHighchart({
    vis2server( a = plot_man_scenC7$taille, b = rendement_scenC7$valeur, c = plot_man_scenC7$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC7 <- renderDT({
    vis3server( a = stadephysio_scenC7)
  })
  
  # Vis 4
  
  output$period_scenC7 <- renderPlotly({
    vis4server( a = periods_scenC7)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC7 <- reactive({
    input$radio_scenC7
    if (input$radio_scenC7 == 1) {
      dataa_scenC7 <- mois(data_radio_scenC7)
    } else if ((input$radio_scenC7 == 2)) {
      dataa_scenC7 <- saison(data_radio_scenC7)
    } else if ((input$radio == 3)) {
      dataa_scenC7 <- quinzine(data_radio_scenC7)
    } else {
      dataa_scenC7 <- data_radio_scenC7
    }
    
  })
  
  
  output$plot_scenC7 <- renderHighchart({
    
    visAserver(a = bins_scenC7())
    
  })
  
  # Vis b
  output$ressour_consom_scenC7 <- renderHighchart({
    visBserver(a = data3_radio_scenC7)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC7 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC7))
  })
  
  # Vis d
  output$grain_ingestt_scenC7 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC7))
  })
  
  # Vis e
  output$youngsoldl_scenC7 <- renderInfoBox({
    visEserver(light_young_scenC7)
  })
  
  # Vis f
  
  output$youngsoldh_scenC7 <- renderInfoBox({
    visFserver(heavy_young_scenC7)
  })
  
  # Vis g
  output$femalecul_scenC7 <- renderInfoBox({
    visGserver(female_culled_scenC7)
  })
  
  # Vis l
  output$rlack_scenC7 <- renderInfoBox({
    visLserver(rangeland_lack_scenC7)
  })
  
  # Vis m
  output$glack_scenC7 <- renderInfoBox({
    visMserver(grassland_lack_scenC7)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC7 <-  renderHighchart({
    visHserver(data_ressource_scenC7)
  })
  
  # Vis i
  output$gauge1_scenC7 <- renderHighchart({
    visIserver(taux_paturage_scenC7)
  })
  
  # Vis j
  output$gauge2_scenC7 <- renderHighchart({
    visIserver(auto_four_scenC7)
  })
  
  # Vis k
  
  output$gauge3_scenC7 <- renderHighchart({
    visIserver(auto_concen_scenC7)
  })
  
  
  # -------------------------------------------------------------------------Scénario 48
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC8, {
    hcpxy <- highchartProxy("animated_scenC8")
    
    if(input$item_choice_scenC8 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC8 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC8 == "circle") {
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
  
  output$animated_scenC8 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC8)
  })
  
  # Vis 2
  output$ressource_surface_scenC8 <- renderHighchart({
    vis2server( a = plot_man_scenC8$taille, b = rendement_scenC8$valeur, c = plot_man_scenC8$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC8 <- renderDT({
    vis3server( a = stadephysio_scenC8)
  })
  
  # Vis 4
  
  output$period_scenC8 <- renderPlotly({
    vis4server( a = periods_scenC8)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC8 <- reactive({
    input$radio_scenC8
    if (input$radio_scenC8 == 1) {
      dataa_scenC8 <- mois(data_radio_scenC8)
    } else if ((input$radio_scenC8 == 2)) {
      dataa_scenC8 <- saison(data_radio_scenC8)
    } else if ((input$radio == 3)) {
      dataa_scenC8 <- quinzine(data_radio_scenC8)
    } else {
      dataa_scenC8 <- data_radio_scenC8
    }
    
  })
  
  
  output$plot_scenC8 <- renderHighchart({
    
    visAserver(a = bins_scenC8())
    
  })
  
  # Vis b
  output$ressour_consom_scenC8 <- renderHighchart({
    visBserver(a = data3_radio_scenC8)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC8 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC8))
  })
  
  # Vis d
  output$grain_ingestt_scenC8 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC8))
  })
  
  # Vis e
  output$youngsoldl_scenC8 <- renderInfoBox({
    visEserver(light_young_scenC8)
  })
  
  # Vis f
  
  output$youngsoldh_scenC8 <- renderInfoBox({
    visFserver(heavy_young_scenC8)
  })
  
  # Vis g
  output$femalecul_scenC8 <- renderInfoBox({
    visGserver(female_culled_scenC8)
  })
  
  # Vis l
  output$rlack_scenC8 <- renderInfoBox({
    visLserver(rangeland_lack_scenC8)
  })
  
  # Vis m
  output$glack_scenC8 <- renderInfoBox({
    visMserver(grassland_lack_scenC8)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC8 <-  renderHighchart({
    visHserver(data_ressource_scenC8)
  })
  
  # Vis i
  output$gauge1_scenC8 <- renderHighchart({
    visIserver(taux_paturage_scenC8)
  })
  
  # Vis j
  output$gauge2_scenC8 <- renderHighchart({
    visIserver(auto_four_scenC8)
  })
  
  # Vis k
  
  output$gauge3_scenC8 <- renderHighchart({
    visIserver(auto_concen_scenC8)
  })
  
  # -------------------------------------------------------------------------Scénario 49
  # paramètres d'entrés
  # Vis 1
  observeEvent(input$item_choice_scenC9, {
    hcpxy <- highchartProxy("animated_scenC9")
    
    if(input$item_choice_scenC9 == "parliment") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          center = list('50%', '88%'),
          size = '170%',
          startAngle = -100,
          endAngle = 100
        )
    } else if (input$item_choice_scenC9 == "rectangle") {
      hcpxy %>%
        hcpxy_update_series(
          id = "serieid",
          startAngle = NULL,
          endAngle = NULL
        )
    } else if (input$item_choice_scenC9 == "circle") {
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
  
  output$animated_scenC9 <- renderHighchart ({
    # Sys.sleep(1.5)
    vis1server( a = data2_scenC9)
  })
  
  # Vis 2
  output$ressource_surface_scenC9 <- renderHighchart({
    vis2server( a = plot_man_scenC9$taille, b = rendement_scenC9$valeur, c = plot_man_scenC9$Surface)
  })
  
  # Vis 3
  output$stade_physio_scenC9 <- renderDT({
    vis3server( a = stadephysio_scenC9)
  })
  
  # Vis 4
  
  output$period_scenC9 <- renderPlotly({
    vis4server( a = periods_scenC9)
  })
  
  
  # Paramètres de sortie 
  # Vis a
  
  bins_scenC9 <- reactive({
    input$radio_scenC9
    if (input$radio_scenC9 == 1) {
      dataa_scenC9 <- mois(data_radio_scenC9)
    } else if ((input$radio_scenC9 == 2)) {
      dataa_scenC9 <- saison(data_radio_scenC9)
    } else if ((input$radio == 3)) {
      dataa_scenC9 <- quinzine(data_radio_scenC9)
    } else {
      dataa_scenC9 <- data_radio_scenC9
    }
    
  })
  
  
  output$plot_scenC9 <- renderHighchart({
    
    visAserver(a = bins_scenC9())
    
  })
  
  # Vis b
  output$ressour_consom_scenC9 <- renderHighchart({
    visBserver(a = data3_radio_scenC9)
  })
  
  # Vis c
  
  output$forage_ingestt_scenC9 <- renderInfoBox({
    visCserver(round(forage_ingest_par_fememlle_scenC9))
  })
  
  # Vis d
  output$grain_ingestt_scenC9 <- renderInfoBox({
    visDserver(round(grain_ingest_par_fememlle_scenC9))
  })
  
  # Vis e
  output$youngsoldl_scenC9 <- renderInfoBox({
    visEserver(light_young_scenC9)
  })
  
  # Vis f
  
  output$youngsoldh_scenC9 <- renderInfoBox({
    visFserver(heavy_young_scenC9)
  })
  
  # Vis g
  output$femalecul_scenC9 <- renderInfoBox({
    visGserver(female_culled_scenC9)
  })
  
  # Vis l
  output$rlack_scenC9 <- renderInfoBox({
    visLserver(rangeland_lack_scenC9)
  })
  
  # Vis m
  output$glack_scenC9 <- renderInfoBox({
    visMserver(grassland_lack_scenC9)
  })
  
  # Vis h
  output$ressour_consom_produit_scenC9 <-  renderHighchart({
    visHserver(data_ressource_scenC9)
  })
  
  # Vis i
  output$gauge1_scenC9 <- renderHighchart({
    visIserver(taux_paturage_scenC9)
  })
  
  # Vis j
  output$gauge2_scenC9 <- renderHighchart({
    visIserver(auto_four_scenC9)
  })
  
  # Vis k
  
  output$gauge3_scenC9 <- renderHighchart({
    visIserver(auto_concen_scenC9)
  })
  
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
  
  
  # Comparaison server 
  data_young <-  reactive({
    
    data %>% filter(scenario %in% c(input$Id044 ,input$Id045, input$Id046, input$Id0466))
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
    
    dd %>% filter(scenario %in% c(input$Id047 ,input$Id048, input$Id049, input$Id0499))
  })
  output$ploty <- renderPlotly({
    vistime(data_saison(), 
            col.event = "event", 
            col.group = "scenario", 
            title = "Repartition par saison")
    
    
  })
  
  data_rang <-  reactive({
    
    nn %>% filter(scenario_lack %in% c(input$Id050 ,input$Id051, input$Id052, input$Id0522))
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
    
    tt %>% filter(scenario_taux  %in% c(input$Id053 ,input$Id054, input$Id055, input$Id0555))
  })
  output$anas <- renderHighchart({
    highchart() %>% 
      hc_chart(type = "column") %>%
      
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
  
  
  data_effectif <-  reactive({
    
    effectif_scenar %>% filter(scenario_effectif_animaux   %in% c(input$Id056 ,input$Id057, input$Id058))
  })
  output$halima <- renderHighchart({
    highchart() %>% 
      hc_chart(type = "column") %>%
      hc_plotOptions(column = list(stacking = "normal")) %>%
      
      hc_xAxis(categories = data_effectif()$scenario_effectif_animaux ) %>%
      
      hc_add_series(name="nb_birth",
                    data = data_effectif()$nb_birth 
      ) %>%
      hc_add_series(name="nb_female",
                    data = data_effectif()$nb_female
      ) %>%
      hc_add_series(name="nb_male",
                    data = data_effectif()$nb_male
      ) %>%
      hc_add_series(name="nb_young",
                    data = data_effectif()$nb_young
      ) 
    
  })
  
  data_inget <-  reactive({
    
    ingest_compar %>% filter(scenario_ingest    %in% c(input$Id059 ,input$Id060, input$Id061, input$Id062))
  })
  output$amina <- renderHighchart({
    highchart() %>% 
      hc_chart(type = "column") %>%
      hc_plotOptions(column = list(stacking = "normal")) %>%
      
      hc_xAxis(categories = data_inget()$scenario_ingest) %>%
      
      hc_add_series(name="Forage ingest",
                    data = data_inget()$`Forage ingest`
      ) %>%
      hc_add_series(name="Grain ingest",
                    data = data_inget()$`Grain ingest`
      ) 
    
  })
  
  data_compar_buy_conso <-  reactive({
    
    data_frame1 %>% filter(scenario %in% c(input$Id063 ,input$Id064, input$Id065, input$Id066))
  })
  output$said <- renderHighchart({
    highchart() %>% 
      hc_chart(type = "column") %>%
      hc_plotOptions(column = list(stacking = "normal")) %>%
      hc_xAxis(categories = data_compar_buy_conso()$scenario) %>%
      hc_add_series(name="Forage produit",
                    data = data_compar_buy_conso()$`Forage produit`,
                    stack = "Assets") %>%
      hc_add_series(name="Forage Acheté",
                    data = data_compar_buy_conso()$`Forage Acheté `,
                    stack = "Assets") %>%
      hc_add_series(name="Grain Acheté",
                    data = data_compar_buy_conso()$`Grain Acheté`,
                    stack = "Liabilities") %>%
      hc_add_series(name="Grain Produit",
                    data = data_compar_buy_conso()$`Grain produit`,
                    stack = "Liabilities")
    
  })
  
  surface_compara <-  reactive({
    
    surface_compar %>% filter(scenario_effectif    %in% c(input$Id067 ,input$Id068, input$Id069, input$Id070))
  })
  output$fatima <- renderHighchart({
    hc <- surface_compara() %>% 
      hchart(
        'bar', hcaes(x = 'scenario_effectif', y = 'taille', group = 'Surface'),
        stacking = "normal"
      ) 
    hc
    
    
  })
  
  
    
}

shinyApp(ui, server)
