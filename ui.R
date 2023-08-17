source('function.R')
source("importdata.R")

source('data/scenario1.R')
source('data/scenario2.R')
source('data/scenario3.R')
source('data/scenario4.R')
source('data/scenario5.R')
source('data/scenario6.R')
source('data/scenario7.R')
source('data/scenario8.R')
source('data/scenario9.R')
source('data/scenario10.R')



source('data/scenarioA1.R')
source('data/scenarioA2.R')
source('data/scenarioA3.R')
source('data/scenarioA4.R')
source('data/scenarioA5.R')
source('data/scenarioA6.R')
source('data/scenarioA7.R')
source('data/scenarioA8.R')
source('data/scenarioA9.R')
source('data/scenarioA10.R')
source('data/scenarioA11.R')

source('data/scenarioB1.R')
source('data/scenarioB2.R')
source('data/scenarioB3.R')
source('data/scenarioB4.R')
source('data/scenarioB5.R')
source('data/scenarioB6.R')
source('data/scenarioB7.R')
source('data/scenarioB8.R')
source('data/scenarioB9.R')
source('data/scenarioB10.R')


source('data/scenarioC1.R')
source('data/scenarioC2.R')
source('data/scenarioC3.R')
source('data/scenarioC4.R')
source('data/scenarioC5.R')
source('data/scenarioC6.R')
source('data/scenarioC7.R')
source('data/scenarioC8.R')
source('data/scenarioC9.R')
source('data/scenarioC10.R')
source('data/scenarioC11.R')

source('functionUI.R')
source('functionserver.R')

ui <- dashboardPage(
  
  dashboardHeader(title = "Projet Adapt-Herd",
                  titleWidth = 250
                  
  ),
  dashboardSidebar(
    width = 280, 
    sidebarMenu(
      menuItem("About", tabName = "about", icon = icon("info-circle")),
      menuItem("Case study 1",  icon = tags$i(class = "fa-solid fa-building-wheat"),
               menuSubItem("ESP_MOUTAIN", tabName = "subitem11"),
               menuSubItem("ESP_MOUTAIN_CC", tabName = "subitem12"),
               menuSubItem("ESP_MOUTAIN_CC_FM1", tabName = "subitem13"),
               menuSubItem("ESP_MOUTAIN_CC_FM2", tabName = "subitem14"),
               menuSubItem("ESP_MOUTAIN_CC_FM3", tabName = "subitem15"),
               menuSubItem("ESP_MOUTAIN_CC_HM1", tabName = "subitem16"),
               menuSubItem("ESP_MOUTAIN_CC_HM2", tabName = "subitem17"),
               menuSubItem("ESP_MOUTAIN_CC_HM3", tabName = "subitem18"),
               menuSubItem("ESP_MOUTAIN_CC_HM4", tabName = "subitem19"),
               menuSubItem("ESP_MOUTAIN_CC_HM4B", tabName = "subitem110")
      ),
      menuItem("Case study 2", icon = tags$i(class = "fa-solid fa-building-wheat"),
               menuSubItem("ESP_DRYLANDS", tabName = "subitem21"),
               menuSubItem("ESP_DRYLANDS_CC", tabName = "subitem22"),
               menuSubItem("ESP_DRYLANDS_CC_FeedM1", tabName = "subitem23"),
               menuSubItem("ESP_DRYLANDS_CC_FM1", tabName = "subitem24"),
               menuSubItem("ESP_DRYLANDS_CC_FM2", tabName = "subitem25"),
               menuSubItem("ESP_DRYLANDS_CC_FM3", tabName = "subitem26"),
               menuSubItem("ESP_DRYLANDS_CC_HM1", tabName = "subitem27"),
               menuSubItem("ESP_DRYLANDS_CC_HM2", tabName = "subitem28"),
               menuSubItem("ESP_DRYLANDS_CC_HM3", tabName = "subitem29"),
               menuSubItem("ESP_DRYLANDS_CC_HM4", tabName = "subitem210"),
               menuSubItem("ESP_DRYLANDS_CC_HM4B", tabName = "subitem211")
      ),
      menuItem("Case study 3", icon = tags$i(class = "fa-solid fa-building-wheat"),
               menuSubItem("OVC", tabName = "subitem31"),
               menuSubItem("OVC_CC", tabName = "subitem32"),
               menuSubItem("OVC_CC_FM1", tabName = "subitem33"),
               menuSubItem("OVC_CC_FM1B", tabName = "subitem34"),
               menuSubItem("OVC_CC_FM2", tabName = "subitem35"),
               menuSubItem("OVC_CC_HM1", tabName = "subitem36"),
               menuSubItem("OVC_CC_HM2", tabName = "subitem37"),
               menuSubItem("OVC_CC_HM3", tabName = "subitem38"),
               menuSubItem("OVC_CC_HM3B", tabName = "subitem39"),
               menuSubItem("OVC_FeedM1", tabName = "subitem310")
               ),
      menuItem("Case study 4", icon = tags$i(class = "fa-solid fa-building-wheat"),
               menuSubItem("OVH", tabName = "subitem41"),
               menuSubItem("OVH_CC", tabName = "subitem42"),
               menuSubItem("OVH_CC_FeedM1", tabName = "subitem43"),
               menuSubItem("OVH_CC_FM1", tabName = "subitem44"),
               menuSubItem("OVH_CC_FM2", tabName = "subitem45"),
               menuSubItem("OVH_CC_FM3", tabName = "subitem46"),
               menuSubItem("OVH_CC_HM1", tabName = "subitem47"),
               menuSubItem("OVH_CC_HM2", tabName = "subitem48"),
               menuSubItem("OVH_CC_HM3", tabName = "subitem49"),
               menuSubItem("OVH_CC_HM4", tabName = "subitem410"),
               menuSubItem("OVH_CC_HM4B", tabName = "subitem411")
      ),
      
      menuItem("scenario comparison ", tabName = "comparison", icon = icon("dashboard"))
    )
  ),
  dashboardBody(
    includeCSS("www/dark_mode.css"),
    useShinyjs(), 
    tags$script(src = "https://kit.fontawesome.com/3a3a5f75cd.js"),
    tabItems(
      # ------------------------------ about
      tabItem("about", 
              h2("Interface et visualisation de données de simulation : application aux stratégies d’adaptation des systèmes d’élevage aux changements climatiques",style="text-align:center"),
              imageOutput("home_img"),
              # includeHTML("C:/Users/Youness/Desktop/R project/stage/shiny/test/R/www/index.html"),
              box(width=12,height="80px",
                  p(style="font-size:20px",strong("The objective"),"of this application is to develop prototypes of visualizations making it possible to report the results obtained from the simulations
and facilitating comparison between them."),
              ),
      ),
      tabItem("subitem11",
              
              scenario(a = "scenario0", b = "par_entree", c = "item_choice",
                       d = "animated", e ="ressource_surface", f ="stade_physio", 
                       g = "period", h = "par_sortie", i = "plot", j = "radio",
                       k = "ressour_consom", l = "forage_ingestt", m = "grain_ingestt",
                       n = "youngsoldl", o = "youngsoldh", p =  "femalecul", 
                       q = "ressour_consom_produit", r = "gauge1", s = "gauge2", t = "gauge3", u ="rlack", v = "glack"
              ),
      ),
      tabItem("subitem12",
              scenario(a = "scenario_scen2", b = "par_entree_scen2", c = "item_choice_scen2",
                       d = "animated_scen2", e ="ressource_surface_scen2", f ="stade_physio_scen2", 
                       g = "period_scen2", h = "par_sortie_scen2", i = "plot_scen2", j = "radio_scen2",
                       k = "ressour_consom_scen2", l = "forage_ingestt_scen2", m = "grain_ingestt_scen2",
                       n = "youngsoldl_scen2", o = "youngsoldh_scen2", p =  "femalecul_scen2", 
                       q = "ressour_consom_produit_scen2", r = "gauge1_scen2", s = "gauge2_scen2", t = "gauge3_scen2", u ="rlack_scen2", v = "glack_scen2"
              ),
              ),
      tabItem("subitem13",
              scenario(a = "scenario_scen3", b = "par_entree_scen3", c = "item_choice_scen3",
                       d = "animated_scen3", e ="ressource_surface_scen3", f ="stade_physio_scen3", 
                       g = "period_scen3", h = "par_sortie_scen3", i = "plot_scen3", j = "radio_scen3",
                       k = "ressour_consom_scen3", l = "forage_ingestt_scen3", m = "grain_ingestt_scen3",
                       n = "youngsoldl_scen3", o = "youngsoldh_scen3", p =  "femalecul_scen3", 
                       q = "ressour_consom_produit_scen3", r = "gauge1_scen3", s = "gauge2_scen3", t = "gauge3_scen3", u ="rlack_scen3", v = "glack_scen3"
              )
      ),
      tabItem("subitem14",
              scenario(a = "scenario_scen4", b = "par_entree_scen4", c = "item_choice_scen4",
                       d = "animated_scen4", e ="ressource_surface_scen4", f ="stade_physio_scen4", 
                       g = "period_scen4", h = "par_sortie_scen4", i = "plot_scen4", j = "radio_scen4",
                       k = "ressour_consom_scen4", l = "forage_ingestt_scen4", m = "grain_ingestt_scen4",
                       n = "youngsoldl_scen4", o = "youngsoldh_scen4", p =  "femalecul_scen4", 
                       q = "ressour_consom_produit_scen4", r = "gauge1_scen4", s = "gauge2_scen4", t = "gauge3_scen4", u ="rlack_scen4", v = "glack_scen4"
              )
      ),
      tabItem("subitem15",
              scenario(a = "scenario_scen5", b = "par_entree_scen5", c = "item_choice_scen5",
                       d = "animated_scen5", e ="ressource_surface_scen5", f ="stade_physio_scen5", 
                       g = "period_scen5", h = "par_sortie_scen5", i = "plot_scen5", j = "radio_scen5",
                       k = "ressour_consom_scen5", l = "forage_ingestt_scen5", m = "grain_ingestt_scen5",
                       n = "youngsoldl_scen5", o = "youngsoldh_scen5", p =  "femalecul_scen5", 
                       q = "ressour_consom_produit_scen5", r = "gauge1_scen5", s = "gauge2_scen5", t = "gauge3_scen5", u ="rlack_scen5", v = "glack_scen5"
              )
      ),
      tabItem("subitem16",
              scenario(a = "scenario_scen6", b = "par_entree_scen6", c = "item_choice_scen6",
                       d = "animated_scen6", e ="ressource_surface_scen6", f ="stade_physio_scen6", 
                       g = "period_scen6", h = "par_sortie_scen6", i = "plot_scen6", j = "radio_scen6",
                       k = "ressour_consom_scen6", l = "forage_ingestt_scen6", m = "grain_ingestt_scen6",
                       n = "youngsoldl_scen6", o = "youngsoldh_scen6", p =  "femalecul_scen6", 
                       q = "ressour_consom_produit_scen6", r = "gauge1_scen6", s = "gauge2_scen6", t = "gauge3_scen6", u ="rlack_scen6", v = "glack_scen6"
              )
      ),
      tabItem("subitem17",
              scenario(a = "scenario_scen7", b = "par_entree_scen7", c = "item_choice_scen7",
                       d = "animated_scen7", e ="ressource_surface_scen7", f ="stade_physio_scen7", 
                       g = "period_scen7", h = "par_sortie_scen7", i = "plot_scen7", j = "radio_scen7",
                       k = "ressour_consom_scen7", l = "forage_ingestt_scen7", m = "grain_ingestt_scen7",
                       n = "youngsoldl_scen7", o = "youngsoldh_scen7", p =  "femalecul_scen7", 
                       q = "ressour_consom_produit_scen7", r = "gauge1_scen7", s = "gauge2_scen7", t = "gauge3_scen7", u ="rlack_scen7", v = "glack_scen7"
              )
      ),
      tabItem("subitem18",
              scenario(a = "scenario_scen8", b = "par_entree_scen8", c = "item_choice_scen8",
                       d = "animated_scen8", e ="ressource_surface_scen8", f ="stade_physio_scen8", 
                       g = "period_scen8", h = "par_sortie_scen8", i = "plot_scen8", j = "radio_scen8",
                       k = "ressour_consom_scen8", l = "forage_ingestt_scen8", m = "grain_ingestt_scen8",
                       n = "youngsoldl_scen8", o = "youngsoldh_scen8", p =  "femalecul_scen8", 
                       q = "ressour_consom_produit_scen8", r = "gauge1_scen8", s = "gauge2_scen8", t = "gauge3_scen8", u ="rlack_scen8", v = "glack_scen8"
              )
      ),
      tabItem("subitem19",
              scenario(a = "scenario_scen9", b = "par_entree_scen9", c = "item_choice_scen9",
                       d = "animated_scen9", e ="ressource_surface_scen9", f ="stade_physio_scen9", 
                       g = "period_scen9", h = "par_sortie_scen9", i = "plot_scen9", j = "radio_scen9",
                       k = "ressour_consom_scen9", l = "forage_ingestt_scen9", m = "grain_ingestt_scen9",
                       n = "youngsoldl_scen9", o = "youngsoldh_scen9", p =  "femalecul_scen9", 
                       q = "ressour_consom_produit_scen9", r = "gauge1_scen9", s = "gauge2_scen9", t = "gauge3_scen9", u ="rlack_scen9", v = "glack_scen9"
              )
      ),
      tabItem("subitem110",
              scenario(a = "scenario_scen10", b = "par_entree_scen10", c = "item_choice_scen10",
                       d = "animated_scen10", e ="ressource_surface_scen10", f ="stade_physio_scen10", 
                       g = "period_scen10", h = "par_sortie_scen10", i = "plot_scen10", j = "radio_scen10",
                       k = "ressour_consom_scen10", l = "forage_ingestt_scen10", m = "grain_ingestt_scen10",
                       n = "youngsoldl_scen10", o = "youngsoldh_scen10", p =  "femalecul_scen10", 
                       q = "ressour_consom_produit_scen10", r = "gauge1_scen10", s = "gauge2_scen10", t = "gauge3_scen10", u ="rlack_scen10", v = "glack_scen10"
              )
      ),
      tabItem("subitem21",
              scenario(a = "scenario_scenA1", b = "par_entree_scenA1", c = "item_choice_scenA1",
                       d = "animated_scenA1", e ="ressource_surface_scenA1", f ="stade_physio_scenA1", 
                       g = "period_scenA1", h = "par_sortie_scenA1", i = "plot_scenA1", j = "radio_scenA1",
                       k = "ressour_consom_scenA1", l = "forage_ingestt_scenA1", m = "grain_ingestt_scenA1",
                       n = "youngsoldl_scenA1", o = "youngsoldh_scenA1", p =  "femalecul_scenA1", 
                       q = "ressour_consom_produit_scenA1", r = "gauge1_scenA1", s = "gauge2_scenA1", t = "gauge3_scenA1", u ="rlack_scenA1", v = "glack_scenA1"
              )
      ),
      tabItem("subitem22",
              scenario(a = "scenario_scenA2", b = "par_entree_scenA2", c = "item_choice_scenA2",
                       d = "animated_scenA2", e ="ressource_surface_scenA2", f ="stade_physio_scenA2", 
                       g = "period_scenA2", h = "par_sortie_scenA2", i = "plot_scenA2", j = "radio_scenA2",
                       k = "ressour_consom_scenA2", l = "forage_ingestt_scenA2", m = "grain_ingestt_scenA2",
                       n = "youngsoldl_scenA2", o = "youngsoldh_scenA2", p =  "femalecul_scenA2", 
                       q = "ressour_consom_produit_scenA2", r = "gauge1_scenA2", s = "gauge2_scenA2", t = "gauge3_scenA2", u ="rlack_scenA2", v = "glack_scenA2"
              )
      ),
      tabItem("subitem23",
              scenario(a = "scenario_scenA3", b = "par_entree_scenA3", c = "item_choice_scenA3",
                       d = "animated_scenA3", e ="ressource_surface_scenA3", f ="stade_physio_scenA3", 
                       g = "period_scenA3", h = "par_sortie_scenA3", i = "plot_scenA3", j = "radio_scenA3",
                       k = "ressour_consom_scenA3", l = "forage_ingestt_scenA3", m = "grain_ingestt_scenA3",
                       n = "youngsoldl_scenA3", o = "youngsoldh_scenA3", p =  "femalecul_scenA3", 
                       q = "ressour_consom_produit_scenA3", r = "gauge1_scenA3", s = "gauge2_scenA3", t = "gauge3_scenA3", u ="rlack_scenA3", v = "glack_scenA3"
              )
      ),
      tabItem("subitem24",
              scenario(a = "scenario_scenA4", b = "par_entree_scenA4", c = "item_choice_scenA4",
                       d = "animated_scenA4", e ="ressource_surface_scenA4", f ="stade_physio_scenA4", 
                       g = "period_scenA4", h = "par_sortie_scenA4", i = "plot_scenA4", j = "radio_scenA4",
                       k = "ressour_consom_scenA4", l = "forage_ingestt_scenA4", m = "grain_ingestt_scenA4",
                       n = "youngsoldl_scenA4", o = "youngsoldh_scenA4", p =  "femalecul_scenA4", 
                       q = "ressour_consom_produit_scenA4", r = "gauge1_scenA4", s = "gauge2_scenA4", t = "gauge3_scenA4", u ="rlack_scenA4", v = "glack_scenA4"
              )
      ),
      tabItem("subitem25",
              scenario(a = "scenario_scenA5", b = "par_entree_scenA5", c = "item_choice_scenA5",
                       d = "animated_scenA5", e ="ressource_surface_scenA5", f ="stade_physio_scenA5", 
                       g = "period_scenA5", h = "par_sortie_scenA5", i = "plot_scenA5", j = "radio_scenA5",
                       k = "ressour_consom_scenA5", l = "forage_ingestt_scenA5", m = "grain_ingestt_scenA5",
                       n = "youngsoldl_scenA5", o = "youngsoldh_scenA5", p =  "femalecul_scenA5", 
                       q = "ressour_consom_produit_scenA5", r = "gauge1_scenA5", s = "gauge2_scenA5", t = "gauge3_scenA5", u ="rlack_scenA5", v = "glack_scenA5"
              )
      ),
      tabItem("subitem26",
              scenario(a = "scenario_scenA6", b = "par_entree_scenA6", c = "item_choice_scenA6",
                       d = "animated_scenA6", e ="ressource_surface_scenA6", f ="stade_physio_scenA6", 
                       g = "period_scenA6", h = "par_sortie_scenA6", i = "plot_scenA6", j = "radio_scenA6",
                       k = "ressour_consom_scenA6", l = "forage_ingestt_scenA6", m = "grain_ingestt_scenA6",
                       n = "youngsoldl_scenA6", o = "youngsoldh_scenA6", p =  "femalecul_scenA6", 
                       q = "ressour_consom_produit_scenA6", r = "gauge1_scenA6", s = "gauge2_scenA6", t = "gauge3_scenA6", u ="rlack_scenA6", v = "glack_scenA6"
              )
      ),
      
      tabItem("subitem27",
              scenario(a = "scenario_scenA7", b = "par_entree_scenA7", c = "item_choice_scenA7",
                       d = "animated_scenA7", e ="ressource_surface_scenA7", f ="stade_physio_scenA7", 
                       g = "period_scenA7", h = "par_sortie_scenA7", i = "plot_scenA7", j = "radio_scenA7",
                       k = "ressour_consom_scenA7", l = "forage_ingestt_scenA7", m = "grain_ingestt_scenA7",
                       n = "youngsoldl_scenA7", o = "youngsoldh_scenA7", p =  "femalecul_scenA7", 
                       q = "ressour_consom_produit_scenA7", r = "gauge1_scenA7", s = "gauge2_scenA7", t = "gauge3_scenA7", u ="rlack_scenA7", v = "glack_scenA7"
              )
      ),
      tabItem("subitem28",
              scenario(a = "scenario_scenA8", b = "par_entree_scenA8", c = "item_choice_scenA8",
                       d = "animated_scenA8", e ="ressource_surface_scenA8", f ="stade_physio_scenA8", 
                       g = "period_scenA8", h = "par_sortie_scenA8", i = "plot_scenA8", j = "radio_scenA8",
                       k = "ressour_consom_scenA8", l = "forage_ingestt_scenA8", m = "grain_ingestt_scenA8",
                       n = "youngsoldl_scenA8", o = "youngsoldh_scenA8", p =  "femalecul_scenA8", 
                       q = "ressour_consom_produit_scenA8", r = "gauge1_scenA8", s = "gauge2_scenA8", t = "gauge3_scenA8", u ="rlack_scenA8", v = "glack_scenA8"
              )
      ),
      tabItem("subitem29",
              scenario(a = "scenario_scenA9", b = "par_entree_scenA9", c = "item_choice_scenA9",
                       d = "animated_scenA9", e ="ressource_surface_scenA9", f ="stade_physio_scenA9", 
                       g = "period_scenA9", h = "par_sortie_scenA9", i = "plot_scenA9", j = "radio_scenA9",
                       k = "ressour_consom_scenA9", l = "forage_ingestt_scenA9", m = "grain_ingestt_scenA9",
                       n = "youngsoldl_scenA9", o = "youngsoldh_scenA9", p =  "femalecul_scenA9", 
                       q = "ressour_consom_produit_scenA9", r = "gauge1_scenA9", s = "gauge2_scenA9", t = "gauge3_scenA9", u ="rlack_scenA9", v = "glack_scenA9"
              )
      ),
      tabItem("subitem210",
              scenario(a = "scenario_scenA10", b = "par_entree_scenA10", c = "item_choice_scenA10",
                       d = "animated_scenA10", e ="ressource_surface_scenA10", f ="stade_physio_scenA10", 
                       g = "period_scenA10", h = "par_sortie_scenA10", i = "plot_scenA10", j = "radio_scenA10",
                       k = "ressour_consom_scenA10", l = "forage_ingestt_scenA10", m = "grain_ingestt_scenA10",
                       n = "youngsoldl_scenA10", o = "youngsoldh_scenA10", p =  "femalecul_scenA10", 
                       q = "ressour_consom_produit_scenA10", r = "gauge1_scenA10", s = "gauge2_scenA10", t = "gauge3_scenA10", u ="rlack_scenA10", v = "glack_scenA10"
              )
      ),
      tabItem("subitem211",
              scenario(a = "scenario_scenA11", b = "par_entree_scenA11", c = "item_choice_scenA11",
                       d = "animated_scenA11", e ="ressource_surface_scenA11", f ="stade_physio_scenA11", 
                       g = "period_scenA11", h = "par_sortie_scenA11", i = "plot_scenA11", j = "radio_scenA11",
                       k = "ressour_consom_scenA11", l = "forage_ingestt_scenA11", m = "grain_ingestt_scenA11",
                       n = "youngsoldl_scenA11", o = "youngsoldh_scenA11", p =  "femalecul_scenA11", 
                       q = "ressour_consom_produit_scenA11", r = "gauge1_scenA11", s = "gauge2_scenA11", t = "gauge3_scenA11", u ="rlack_scenA11", v = "glack_scenA11"
              )
      ),
      tabItem("subitem31",
              scenario(a = "scenario_scenB1", b = "par_entree_scenB1", c = "item_choice_scenB1",
                       d = "animated_scenB1", e ="ressource_surface_scenB1", f ="stade_physio_scenB1", 
                       g = "period_scenB1", h = "par_sortie_scenB1", i = "plot_scenB1", j = "radio_scenB1",
                       k = "ressour_consom_scenB1", l = "forage_ingestt_scenB1", m = "grain_ingestt_scenB1",
                       n = "youngsoldl_scenB1", o = "youngsoldh_scenB1", p =  "femalecul_scenB1", 
                       q = "ressour_consom_produit_scenB1", r = "gauge1_scenB1", s = "gauge2_scenB1", t = "gauge3_scenB1", u ="rlack_scenB1", v = "glack_scenB1"
              )
      ),
      tabItem("subitem32",
              scenario(a = "scenario_scenB2", b = "par_entree_scenB2", c = "item_choice_scenB2",
                       d = "animated_scenB2", e ="ressource_surface_scenB2", f ="stade_physio_scenB2", 
                       g = "period_scenB2", h = "par_sortie_scenB2", i = "plot_scenB2", j = "radio_scenB2",
                       k = "ressour_consom_scenB2", l = "forage_ingestt_scenB2", m = "grain_ingestt_scenB2",
                       n = "youngsoldl_scenB2", o = "youngsoldh_scenB2", p =  "femalecul_scenB2", 
                       q = "ressour_consom_produit_scenB2", r = "gauge1_scenB2", s = "gauge2_scenB2", t = "gauge3_scenB2", u ="rlack_scenB2", v = "glack_scenB2"
              )
      ),
      tabItem("subitem33",
              scenario(a = "scenario_scenB3", b = "par_entree_scenB3", c = "item_choice_scenB3",
                       d = "animated_scenB3", e ="ressource_surface_scenB3", f ="stade_physio_scenB3", 
                       g = "period_scenB3", h = "par_sortie_scenB3", i = "plot_scenB3", j = "radio_scenB3",
                       k = "ressour_consom_scenB3", l = "forage_ingestt_scenB3", m = "grain_ingestt_scenB3",
                       n = "youngsoldl_scenB3", o = "youngsoldh_scenB3", p =  "femalecul_scenB3", 
                       q = "ressour_consom_produit_scenB3", r = "gauge1_scenB3", s = "gauge2_scenB3", t = "gauge3_scenB3", u ="rlack_scenB3", v = "glack_scenB3"
              )
      ),
      tabItem("subitem34",
              scenario(a = "scenario_scenB4", b = "par_entree_scenB4", c = "item_choice_scenB4",
                       d = "animated_scenB4", e ="ressource_surface_scenB4", f ="stade_physio_scenB4", 
                       g = "period_scenB4", h = "par_sortie_scenB4", i = "plot_scenB4", j = "radio_scenB4",
                       k = "ressour_consom_scenB4", l = "forage_ingestt_scenB4", m = "grain_ingestt_scenB4",
                       n = "youngsoldl_scenB4", o = "youngsoldh_scenB4", p =  "femalecul_scenB4", 
                       q = "ressour_consom_produit_scenB4", r = "gauge1_scenB4", s = "gauge2_scenB4", t = "gauge3_scenB4", u ="rlack_scenB4", v = "glack_scenB4"
              )
      ),
      tabItem("subitem35",
              scenario(a = "scenario_scenB5", b = "par_entree_scenB5", c = "item_choice_scenB5",
                       d = "animated_scenB5", e ="ressource_surface_scenB5", f ="stade_physio_scenB5", 
                       g = "period_scenB5", h = "par_sortie_scenB5", i = "plot_scenB5", j = "radio_scenB5",
                       k = "ressour_consom_scenB5", l = "forage_ingestt_scenB5", m = "grain_ingestt_scenB5",
                       n = "youngsoldl_scenB5", o = "youngsoldh_scenB5", p =  "femalecul_scenB5", 
                       q = "ressour_consom_produit_scenB5", r = "gauge1_scenB5", s = "gauge2_scenB5", t = "gauge3_scenB5", u ="rlack_scenB5", v = "glack_scenB5"
              )
      ),
      tabItem("subitem36",
              scenario(a = "scenario_scenB6", b = "par_entree_scenB6", c = "item_choice_scenB6",
                       d = "animated_scenB6", e ="ressource_surface_scenB6", f ="stade_physio_scenB6", 
                       g = "period_scenB6", h = "par_sortie_scenB6", i = "plot_scenB6", j = "radio_scenB6",
                       k = "ressour_consom_scenB6", l = "forage_ingestt_scenB6", m = "grain_ingestt_scenB6",
                       n = "youngsoldl_scenB6", o = "youngsoldh_scenB6", p =  "femalecul_scenB6", 
                       q = "ressour_consom_produit_scenB6", r = "gauge1_scenB6", s = "gauge2_scenB6", t = "gauge3_scenB6", u ="rlack_scenB6", v = "glack_scenB6"
              )
      ),
      tabItem("subitem37",
              scenario(a = "scenario_scenB7", b = "par_entree_scenB7", c = "item_choice_scenB7",
                       d = "animated_scenB7", e ="ressource_surface_scenB7", f ="stade_physio_scenB7", 
                       g = "period_scenB7", h = "par_sortie_scenB7", i = "plot_scenB7", j = "radio_scenB7",
                       k = "ressour_consom_scenB7", l = "forage_ingestt_scenB7", m = "grain_ingestt_scenB7",
                       n = "youngsoldl_scenB7", o = "youngsoldh_scenB7", p =  "femalecul_scenB7", 
                       q = "ressour_consom_produit_scenB7", r = "gauge1_scenB7", s = "gauge2_scenB7", t = "gauge3_scenB7", u ="rlack_scenB7", v = "glack_scenB7"
              )
      ),
      tabItem("subitem38",
              scenario(a = "scenario_scenB8", b = "par_entree_scenB8", c = "item_choice_scenB8",
                       d = "animated_scenB8", e ="ressource_surface_scenB8", f ="stade_physio_scenB8", 
                       g = "period_scenB8", h = "par_sortie_scenB8", i = "plot_scenB8", j = "radio_scenB8",
                       k = "ressour_consom_scenB8", l = "forage_ingestt_scenB8", m = "grain_ingestt_scenB8",
                       n = "youngsoldl_scenB8", o = "youngsoldh_scenB8", p =  "femalecul_scenB8", 
                       q = "ressour_consom_produit_scenB8", r = "gauge1_scenB8", s = "gauge2_scenB8", t = "gauge3_scenB8", u ="rlack_scenB8", v = "glack_scenB8"
              )
      ),
      tabItem("subitem39",
              scenario(a = "scenario_scenB9", b = "par_entree_scenB9", c = "item_choice_scenB9",
                       d = "animated_scenB9", e ="ressource_surface_scenB9", f ="stade_physio_scenB9", 
                       g = "period_scenB9", h = "par_sortie_scenB9", i = "plot_scenB9", j = "radio_scenB9",
                       k = "ressour_consom_scenB9", l = "forage_ingestt_scenB9", m = "grain_ingestt_scenB9",
                       n = "youngsoldl_scenB9", o = "youngsoldh_scenB9", p =  "femalecul_scenB9", 
                       q = "ressour_consom_produit_scenB9", r = "gauge1_scenB9", s = "gauge2_scenB9", t = "gauge3_scenB9", u ="rlack_scenB9", v = "glack_scenB9"
              )
      ),
      tabItem("subitem310",
              scenario(a = "scenario_scenB10", b = "par_entree_scenB10", c = "item_choice_scenB10",
                       d = "animated_scenB10", e ="ressource_surface_scenB10", f ="stade_physio_scenB10", 
                       g = "period_scenB10", h = "par_sortie_scenB10", i = "plot_scenB10", j = "radio_scenB10",
                       k = "ressour_consom_scenB10", l = "forage_ingestt_scenB10", m = "grain_ingestt_scenB10",
                       n = "youngsoldl_scenB10", o = "youngsoldh_scenB10", p =  "femalecul_scenB10", 
                       q = "ressour_consom_produit_scenB10", r = "gauge1_scenB10", s = "gauge2_scenB10", t = "gauge3_scenB10", u ="rlack_scenB10", v = "glack_scenB10"
              )
      ),
      tabItem("subitem41",
              scenario(a = "scenario_scenC1", b = "par_entree_scenC1", c = "item_choice_scenC1",
                       d = "animated_scenC1", e ="ressource_surface_scenC1", f ="stade_physio_scenC1", 
                       g = "period_scenC1", h = "par_sortie_scenC1", i = "plot_scenC1", j = "radio_scenC1",
                       k = "ressour_consom_scenC1", l = "forage_ingestt_scenC1", m = "grain_ingestt_scenC1",
                       n = "youngsoldl_scenC1", o = "youngsoldh_scenC1", p =  "femalecul_scenC1", 
                       q = "ressour_consom_produit_scenC1", r = "gauge1_scenC1", s = "gauge2_scenC1", t = "gauge3_scenC1", u ="rlack_scenC1", v = "glack_scenC1"
              )
      ),
      tabItem("subitem42",
              scenario(a = "scenario_scenC2", b = "par_entree_scenC2", c = "item_choice_scenC2",
                       d = "animated_scenC2", e ="ressource_surface_scenC2", f ="stade_physio_scenC2", 
                       g = "period_scenC2", h = "par_sortie_scenC2", i = "plot_scenC2", j = "radio_scenC2",
                       k = "ressour_consom_scenC2", l = "forage_ingestt_scenC2", m = "grain_ingestt_scenC2",
                       n = "youngsoldl_scenC2", o = "youngsoldh_scenC2", p =  "femalecul_scenC2", 
                       q = "ressour_consom_produit_scenC2", r = "gauge1_scenC2", s = "gauge2_scenC2", t = "gauge3_scenC2", u ="rlack_scenC2", v = "glack_scenC2"
              )
      ),
      tabItem("subitem43",
              scenario(a = "scenario_scenC3", b = "par_entree_scenC3", c = "item_choice_scenC3",
                       d = "animated_scenC3", e ="ressource_surface_scenC3", f ="stade_physio_scenC3", 
                       g = "period_scenC3", h = "par_sortie_scenC3", i = "plot_scenC3", j = "radio_scenC3",
                       k = "ressour_consom_scenC3", l = "forage_ingestt_scenC3", m = "grain_ingestt_scenC3",
                       n = "youngsoldl_scenC3", o = "youngsoldh_scenC3", p =  "femalecul_scenC3", 
                       q = "ressour_consom_produit_scenC3", r = "gauge1_scenC3", s = "gauge2_scenC3", t = "gauge3_scenC3", u ="rlack_scenC3", v = "glack_scenC3"
              )
      ),
      tabItem("subitem44",
              scenario(a = "scenario_scenC4", b = "par_entree_scenC4", c = "item_choice_scenC4",
                       d = "animated_scenC4", e ="ressource_surface_scenC4", f ="stade_physio_scenC4", 
                       g = "period_scenC4", h = "par_sortie_scenC4", i = "plot_scenC4", j = "radio_scenC4",
                       k = "ressour_consom_scenC4", l = "forage_ingestt_scenC4", m = "grain_ingestt_scenC4",
                       n = "youngsoldl_scenC4", o = "youngsoldh_scenC4", p =  "femalecul_scenC4", 
                       q = "ressour_consom_produit_scenC4", r = "gauge1_scenC4", s = "gauge2_scenC4", t = "gauge3_scenC4", u ="rlack_scenC4", v = "glack_scenC4"
              )
      ),
      tabItem("subitem45",
              scenario(a = "scenario_scenC5", b = "par_entree_scenC5", c = "item_choice_scenC5",
                       d = "animated_scenC5", e ="ressource_surface_scenC5", f ="stade_physio_scenC5", 
                       g = "period_scenC5", h = "par_sortie_scenC5", i = "plot_scenC5", j = "radio_scenC5",
                       k = "ressour_consom_scenC5", l = "forage_ingestt_scenC5", m = "grain_ingestt_scenC5",
                       n = "youngsoldl_scenC5", o = "youngsoldh_scenC5", p =  "femalecul_scenC5", 
                       q = "ressour_consom_produit_scenC5", r = "gauge1_scenC5", s = "gauge2_scenC5", t = "gauge3_scenC5", u ="rlack_scenC5", v = "glack_scenC5"
              )
      ),
      tabItem("subitem46",
              scenario(a = "scenario_scenC6", b = "par_entree_scenC6", c = "item_choice_scenC6",
                       d = "animated_scenC6", e ="ressource_surface_scenC6", f ="stade_physio_scenC6", 
                       g = "period_scenC6", h = "par_sortie_scenC6", i = "plot_scenC6", j = "radio_scenC6",
                       k = "ressour_consom_scenC6", l = "forage_ingestt_scenC6", m = "grain_ingestt_scenC6",
                       n = "youngsoldl_scenC6", o = "youngsoldh_scenC6", p =  "femalecul_scenC6", 
                       q = "ressour_consom_produit_scenC6", r = "gauge1_scenC6", s = "gauge2_scenC6", t = "gauge3_scenC6", u ="rlack_scenC6", v = "glack_scenC6"
              )
      ),
      tabItem("subitem47",
              scenario(a = "scenario_scenC7", b = "par_entree_scenC7", c = "item_choice_scenC7",
                       d = "animated_scenC7", e ="ressource_surface_scenC7", f ="stade_physio_scenC7", 
                       g = "period_scenC7", h = "par_sortie_scenC7", i = "plot_scenC7", j = "radio_scenC7",
                       k = "ressour_consom_scenC7", l = "forage_ingestt_scenC7", m = "grain_ingestt_scenC7",
                       n = "youngsoldl_scenC7", o = "youngsoldh_scenC7", p =  "femalecul_scenC7", 
                       q = "ressour_consom_produit_scenC7", r = "gauge1_scenC7", s = "gauge2_scenC7", t = "gauge3_scenC7", u ="rlack_scenC7", v = "glack_scenC7"
              )
      ),
      tabItem("subitem48",
              scenario(a = "scenario_scenC8", b = "par_entree_scenC8", c = "item_choice_scenC8",
                       d = "animated_scenC8", e ="ressource_surface_scenC8", f ="stade_physio_scenC8", 
                       g = "period_scenC8", h = "par_sortie_scenC8", i = "plot_scenC8", j = "radio_scenC8",
                       k = "ressour_consom_scenC8", l = "forage_ingestt_scenC8", m = "grain_ingestt_scenC8",
                       n = "youngsoldl_scenC8", o = "youngsoldh_scenC8", p =  "femalecul_scenC8", 
                       q = "ressour_consom_produit_scenC8", r = "gauge1_scenC8", s = "gauge2_scenC8", t = "gauge3_scenC8", u ="rlack_scenC8", v = "glack_scenC8"
              )
      ),
      tabItem("subitem49",
              scenario(a = "scenario_scenC9", b = "par_entree_scenC9", c = "item_choice_scenC9",
                       d = "animated_scenC9", e ="ressource_surface_scenC9", f ="stade_physio_scenC9", 
                       g = "period_scenC9", h = "par_sortie_scenC9", i = "plot_scenC9", j = "radio_scenC9",
                       k = "ressour_consom_scenC9", l = "forage_ingestt_scenC9", m = "grain_ingestt_scenC9",
                       n = "youngsoldl_scenC9", o = "youngsoldh_scenC9", p =  "femalecul_scenC9", 
                       q = "ressour_consom_produit_scenC9", r = "gauge1_scenC9", s = "gauge2_scenC9", t = "gauge3_scenC9", u ="rlack_scenC9", v = "glack_scenC9"
              )
      ),
      tabItem("subitem410",
              scenario(a = "scenario_scenC10", b = "par_entree_scenC10", c = "item_choice_scenC10",
                       d = "animated_scenC10", e ="ressource_surface_scenC10", f ="stade_physio_scenC10", 
                       g = "period_scenC10", h = "par_sortie_scenC10", i = "plot_scenC10", j = "radio_scenC10",
                       k = "ressour_consom_scenC10", l = "forage_ingestt_scenC10", m = "grain_ingestt_scenC10",
                       n = "youngsoldl_scenC10", o = "youngsoldh_scenC10", p =  "femalecul_scenC10", 
                       q = "ressour_consom_produit_scenC10", r = "gauge1_scenC10", s = "gauge2_scenC10", t = "gauge3_scenC10", u ="rlack_scenC10", v = "glack_scenC10"
              )
      ),
      tabItem("subitem410",
              scenario(a = "scenario_scenC11", b = "par_entree_scenC11", c = "item_choice_scenC11",
                       d = "animated_scenC11", e ="ressource_surface_scenC11", f ="stade_physio_scenC11", 
                       g = "period_scenC11", h = "par_sortie_scenC11", i = "plot_scenC11", j = "radio_scenC11",
                       k = "ressour_consom_scenC11", l = "forage_ingestt_scenC11", m = "grain_ingestt_scenC11",
                       n = "youngsoldl_scenC11", o = "youngsoldh_scenC11", p =  "femalecul_scenC11", 
                       q = "ressour_consom_produit_scenC11", r = "gauge1_scenC11", s = "gauge2_scenC11", t = "gauge3_scenC11", u ="rlack_scenC11", v = "glack_scenC11"
              )
      )
      
      
      
    )
  )
)

