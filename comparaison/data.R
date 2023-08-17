# première partie
Nature <- rep(c("Light Young", "Heavy Young", "Female Culled"), times = 31)
valeur <- c(light_young, heavy_young, female_culled,
            light_young_scen2, heavy_young_scen2, female_culled_scen2,
            light_young_scen3, heavy_young_scen3, female_culled_scen3,
            light_young_scen4, heavy_young_scen4, female_culled_scen4,
            light_young_scen5, heavy_young_scen5, female_culled_scen5,
            light_young_scen6, heavy_young_scen6, female_culled_scen6,
            light_young_scen7, heavy_young_scen7, female_culled_scen7,
            light_young_scen8, heavy_young_scen8, female_culled_scen8,
            light_young_scen9, heavy_young_scen9, female_culled_scen9,
            light_young_scen10, heavy_young_scen10, female_culled_scen10,
            light_young_scenA1, heavy_young_scenA1, female_culled_scenA1,
            light_young_scenA2, heavy_young_scenA2, female_culled_scenA2,
            light_young_scenA3, heavy_young_scenA3, female_culled_scenA3,
            light_young_scenA4, heavy_young_scenA4, female_culled_scenA4,
            light_young_scenA5, heavy_young_scenA5, female_culled_scenA5,
            light_young_scenA6, heavy_young_scenA6, female_culled_scenA6,
            light_young_scenA7, heavy_young_scenA7, female_culled_scenA7,
            light_young_scenA8, heavy_young_scenA8, female_culled_scenA8,
            light_young_scenA9, heavy_young_scenA9, female_culled_scenA9,
            light_young_scenA10, heavy_young_scenA10, female_culled_scenA10,
            light_young_scenA11, heavy_young_scenA11, female_culled_scenA11,
            light_young_scenB1, heavy_young_scenB1, female_culled_scenB1,
            light_young_scenB2, heavy_young_scenB2, female_culled_scenB2,
            light_young_scenB3, heavy_young_scenB3, female_culled_scenB3,
            light_young_scenB4, heavy_young_scenB4, female_culled_scenB4,
            light_young_scenB5, heavy_young_scenB5, female_culled_scenB5,
            light_young_scenB6, heavy_young_scenB6, female_culled_scenB6,
            light_young_scenB7, heavy_young_scenB7, female_culled_scenB7,
            light_young_scenB8, heavy_young_scenB8, female_culled_scenB8,
            light_young_scenB9, heavy_young_scenB9, female_culled_scenB9,
            light_young_scenB10, heavy_young_scenB10, female_culled_scenB10
)

scenario <- rep(c("scenario1", "scenario2", "scenario3", "scenario4", "scenario5",
                  "scenario6", "scenario7", "scenario8","scenario9", "scenario10",
                  "scenarioA1", "scenarioA2","scenarioA3","scenarioA4","scenarioA5",
                  "scenarioA6","scenarioA7","scenarioA8","scenarioA9","scenarioA10","scenarioA11",
                  "scenarioB1", "scenarioB2","scenarioB3","scenarioB4","scenarioB5","scenarioB6",
                  "scenarioB7","scenarioB8","scenarioB9","scenarioB10"), each = 3)
data <-data.frame(scenario, Nature,  valeur )
data <- spread(data, key = Nature, value = valeur)

scenario1 <- c("scenario1", "scenario2", "scenario3", "scenario4", "scenario5",
               "scenario6", "scenario7", "scenario8","scenario9", "scenario10")
scenario2 <- c("scenarioA1", "scenarioA2","scenarioA3","scenarioA4","scenarioA5",
               "scenarioA6","scenarioA7","scenarioA8","scenarioA9","scenarioA10","scenarioA11")
scenario3 <- c("scenarioB1", "scenarioB2","scenarioB3","scenarioB4","scenarioB5","scenarioB6",
               "scenarioB7","scenarioB8","scenarioB9","scenarioB10")

# deuxième partie

periods <- periods %>%
  mutate(scenario = rep("ESP_MOUTAIN - initial situation"))

periods_scen2 <- periods_scen2 %>%
  mutate(scenario = rep("ESP_MOUTAIN - situation under climate change"))

periods_scenA1 <- periods_scenA1 %>%
  mutate(scenario = rep("ESP_DRYLANDS - initial situation"))
periods_scenA2 <- periods_scenA2 %>%
  mutate(scenario = rep("ESP_DRYLANDS - situation under climate change"))

periods_scenB1 <- periods_scenB1 %>%
  mutate(scenario = rep("OVC - initial situation"))
periods_scenB2 <- periods_scenB2 %>%
  mutate(scenario = rep("OVC - situation under climate change"))

dd <- rbind(periods, periods_scen2, periods_scenA1, periods_scenA2,
            periods_scenB1, periods_scenB2)



# troixième partie
grass_rang_compar <- c(grassland_lack, rangeland_lack,
                  grassland_lack_scen2, rangeland_lack_scen2,
                  grassland_lack_scen3, rangeland_lack_scen3,
                  grassland_lack_scen4, rangeland_lack_scen4,
                  grassland_lack_scen5, rangeland_lack_scen5,
                  grassland_lack_scen6, rangeland_lack_scen6,
                  grassland_lack_scen7, rangeland_lack_scen7,
                  grassland_lack_scen8, rangeland_lack_scen8,
                  grassland_lack_scen9, rangeland_lack_scen9,
                  grassland_lack_scen10, rangeland_lack_scen10,
                  grassland_lack_scenA1, rangeland_lack_scenA1,
                  grassland_lack_scenA2, rangeland_lack_scenA2,
                  grassland_lack_scenA3, rangeland_lack_scenA3,
                  grassland_lack_scenA4, rangeland_lack_scenA4,
                  grassland_lack_scenA5, rangeland_lack_scenA5,
                  grassland_lack_scenA6, rangeland_lack_scenA6,
                  grassland_lack_scenA7, rangeland_lack_scenA7,
                  grassland_lack_scenA8, rangeland_lack_scenA8,
                  grassland_lack_scenA9, rangeland_lack_scenA9,
                  grassland_lack_scenA10, rangeland_lack_scenA10,
                  grassland_lack_scenA11, rangeland_lack_scenA11,
                  grassland_lack_scenB1, rangeland_lack_scenB1,
                  grassland_lack_scenB2, rangeland_lack_scenB2,
                  grassland_lack_scenB3, rangeland_lack_scenB3,
                  grassland_lack_scenB4, rangeland_lack_scenB4,
                  grassland_lack_scenB5, rangeland_lack_scenB5,
                  grassland_lack_scenB6, rangeland_lack_scenB6,
                  grassland_lack_scenB7, rangeland_lack_scenB7,
                  grassland_lack_scenB8, rangeland_lack_scenB8,
                  grassland_lack_scenB9, rangeland_lack_scenB9,
                  grassland_lack_scenB10, rangeland_lack_scenB10
                  )
scenario_lack <- rep(c("scenario1", "scenario2", "scenario3", "scenario4", "scenario5",
                  "scenario6", "scenario7", "scenario8","scenario9", "scenario10",
                  "scenarioA1", "scenarioA2","scenarioA3","scenarioA4","scenarioA5",
                  "scenarioA6","scenarioA7","scenarioA8","scenarioA9","scenarioA10","scenarioA11",
                  "scenarioB1", "scenarioB2","scenarioB3","scenarioB4","scenarioB5","scenarioB6",
                  "scenarioB7","scenarioB8","scenarioB9","scenarioB10"), each = 2)
nom <- rep(c("Grassland lack", "Rangeland lack"), times =31)

nn <- data.frame( scenario_lack , nom , grass_rang_compar )
nn <- spread(nn, key = nom, value = grass_rang_compar)

# quatrième partie 

taux_compar <- c(taux_paturage, auto_four, auto_concen,
                 taux_paturage_scen2, auto_four_scen2, auto_concen_scen2,
                 taux_paturage_scen3, auto_four_scen3, auto_concen_scen3,
                 taux_paturage_scen4, auto_four_scen4, auto_concen_scen4,
                 taux_paturage_scen5, auto_four_scen5, auto_concen_scen5,
                 taux_paturage_scen6, auto_four_scen6, auto_concen_scen6,
                 taux_paturage_scen7, auto_four_scen7, auto_concen_scen7,
                 taux_paturage_scen8, auto_four_scen8, auto_concen_scen8,
                 taux_paturage_scen9, auto_four_scen9, auto_concen_scen9,
                 taux_paturage_scen10, auto_four_scen10, auto_concen_scen10,
                 taux_paturage_scenA1, auto_four_scenA1, auto_concen_scenA1,
                 taux_paturage_scenA2, auto_four_scenA2, auto_concen_scenA2,
                 taux_paturage_scenA3, auto_four_scenA3, auto_concen_scenA3,
                 taux_paturage_scenA4, auto_four_scenA4, auto_concen_scenA4,
                 taux_paturage_scenA5, auto_four_scenA5, auto_concen_scenA5,
                 taux_paturage_scenA6, auto_four_scenA6, auto_concen_scenA6,
                 taux_paturage_scenA7, auto_four_scenA7, auto_concen_scenA7,
                 taux_paturage_scenA8, auto_four_scenA8, auto_concen_scenA8,
                 taux_paturage_scenA9, auto_four_scenA9, auto_concen_scenA9,
                 taux_paturage_scenA10, auto_four_scenA10, auto_concen_scenA10,
                 taux_paturage_scenA11, auto_four_scenA11, auto_concen_scenA11,
                 taux_paturage_scenB1, auto_four_scenB1, auto_concen_scenB1,
                 taux_paturage_scenB2, auto_four_scenB2, auto_concen_scenB2,
                 taux_paturage_scenB3, auto_four_scenB3, auto_concen_scenB3,
                 taux_paturage_scenB4, auto_four_scenB4, auto_concen_scenB4,
                 taux_paturage_scenB5, auto_four_scenB5, auto_concen_scenB5,
                 taux_paturage_scenB6, auto_four_scenB6, auto_concen_scenB6,
                 taux_paturage_scenB7, auto_four_scenB7, auto_concen_scenB7,
                 taux_paturage_scenB8, auto_four_scenB8, auto_concen_scenB8,
                 taux_paturage_scenB9, auto_four_scenB9, auto_concen_scenB9,
                 taux_paturage_scenB10, auto_four_scenB10, auto_concen_scenB10
                 
                 )

scenario_taux <- rep(c("scenario1", "scenario2", "scenario3", "scenario4", "scenario5",
                       "scenario6", "scenario7", "scenario8","scenario9", "scenario10",
                       "scenarioA1", "scenarioA2","scenarioA3","scenarioA4","scenarioA5",
                       "scenarioA6","scenarioA7","scenarioA8","scenarioA9","scenarioA10","scenarioA11",
                       "scenarioB1", "scenarioB2","scenarioB3","scenarioB4","scenarioB5","scenarioB6",
                       "scenarioB7","scenarioB8","scenarioB9","scenarioB10"), each = 3)

nom <- rep(c("taux de paturage", "autonomie fouragère", "autonomie en concentrée"), times =31)
tt <- data.frame(scenario_taux, nom, taux_compar)
