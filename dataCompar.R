# première partie
Nature <- rep(c("Light Young", "Heavy Young", "Female Culled"), times = 42)
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
            light_young_scenB10, heavy_young_scenB10, female_culled_scenB10,
            light_young_scenC1, heavy_young_scenC1, female_culled_scenC1,
            light_young_scenC2, heavy_young_scenC2, female_culled_scenC2,
            light_young_scenC3, heavy_young_scenC3, female_culled_scenC3,
            light_young_scenC4, heavy_young_scenC4, female_culled_scenC4,
            light_young_scenC5, heavy_young_scenC5, female_culled_scenC5,
            light_young_scenC6, heavy_young_scenC6, female_culled_scenC6,
            light_young_scenC7, heavy_young_scenC7, female_culled_scenC7,
            light_young_scenC8, heavy_young_scenC8, female_culled_scenC8,
            light_young_scenC9, heavy_young_scenC9, female_culled_scenC9,
            light_young_scenC10, heavy_young_scenC10, female_culled_scenC10,
            light_young_scenC11, heavy_young_scenC11, female_culled_scenC11
            
            
)

scenario <- rep(c("DEED_ADAPT_ESP_MOUTAIN", "ESP_MOUTAIN_CC", "ESP_MOUTAIN_CC_FM1", "ESP_MOUTAIN_CC_FM2", 
                  "ESP_MOUTAIN_CC_FM3", "ESP_MOUTAIN_CC_HM1", "ESP_MOUTAIN_CC_HM2", "ESP_MOUTAIN_CC_HM3",
                  "ESP_MOUTAIN_CC_HM4", "ESP_MOUTAIN_CC_HM4B", "ESP_DRYLANDS", "ESP_DRYLANDS_CC", "ESP_DRYLANDS_CC_FeedM1",
                  "ESP_DRYLANDS_CC_FM1", "ESP_DRYLANDS_CC_FM2", "ESP_DRYLANDS_CC_FM3", "ESP_DRYLANDS_CC_HM1", "ESP_DRYLANDS_CC_HM2",
                  "ESP_DRYLANDS_CC_HM3", "ESP_DRYLANDS_CC_HM4", "ESP_DRYLANDS_CC_HM4B", "OVC", "OVC_CC", "OVC_CC_FM1", "OVC_CC_FM1B",
                  "OVC_CC_FM2", "OVC_CC_HM1", "OVC_CC_HM2", "OVC_CC_HM3", "OVC_CC_HM3B", "OVC_FeedM1", 
                  "OVH", "OVH_CC", "OVH_CC_FeedM1", "OVH_CC_FM1", "OVH_CC_FM2", "OVH_CC_FM3", "OVH_CC_HM1", 
                  "OVH_CC_HM2", "OVH_CC_HM3", "OVH_CC_HM4", "OVH_CC_HM4B"
                  ), each = 3)
data <-data.frame(scenario, Nature,  valeur )
data <- spread(data, key = Nature, value = valeur)

scenario1 <- c("scenario1", "scenario2", "scenario3", "scenario4", "scenario5",
               "scenario6", "scenario7", "scenario8","scenario9", "scenario10")
scenario2 <- c("scenarioA1", "scenarioA2","scenarioA3","scenarioA4","scenarioA5",
               "scenarioA6","scenarioA7","scenarioA8","scenarioA9","scenarioA10","scenarioA11")
scenario3 <- c("scenarioB1", "scenarioB2","scenarioB3","scenarioB4","scenarioB5","scenarioB6",
               "scenarioB7","scenarioB8","scenarioB9","scenarioB10")

scenar1 <- c("DEED_ADAPT_ESP_MOUTAIN", "ESP_MOUTAIN_CC", "ESP_MOUTAIN_CC_FM1", "ESP_MOUTAIN_CC_FM2", 
             "ESP_MOUTAIN_CC_FM3", "ESP_MOUTAIN_CC_HM1", "ESP_MOUTAIN_CC_HM2", "ESP_MOUTAIN_CC_HM3",
             "ESP_MOUTAIN_CC_HM4", "ESP_MOUTAIN_CC_HM4B")
scenar2 <- c("ESP_DRYLANDS", "ESP_DRYLANDS_CC", "ESP_DRYLANDS_CC_FeedM1",
             "ESP_DRYLANDS_CC_FM1", "ESP_DRYLANDS_CC_FM2", "ESP_DRYLANDS_CC_FM3", "ESP_DRYLANDS_CC_HM1", "ESP_DRYLANDS_CC_HM2",
             "ESP_DRYLANDS_CC_HM3", "ESP_DRYLANDS_CC_HM4", "ESP_DRYLANDS_CC_HM4B")
scenar3 <- c("OVC", "OVC_CC", "OVC_CC_FM1", "OVC_CC_FM1B",
             "OVC_CC_FM2", "OVC_CC_HM1", "OVC_CC_HM2", "OVC_CC_HM3", "OVC_CC_HM3B", "OVC_FeedM1")

scenar4 <- c("OVH", "OVH_CC", "OVH_CC_FeedM1", "OVH_CC_FM1", "OVH_CC_FM2", "OVH_CC_FM3", "OVH_CC_HM1", 
             "OVH_CC_HM2", "OVH_CC_HM3", "OVH_CC_HM4", "OVH_CC_HM4B")

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

periods_scenC1 <- periods_scenC1 %>%
  mutate(scenario = rep("OVH - initial situation"))

periods_scenC2 <- periods_scenC2 %>%
  mutate(scenario = rep("OVH - situation under climate change"))

dd <- rbind(periods, periods_scen2, periods_scenA1, periods_scenA2,
            periods_scenB1, periods_scenB2, periods_scenC1, periods_scenC2)



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
                       grassland_lack_scenB10, rangeland_lack_scenB10,
                       grassland_lack_scenC1, rangeland_lack_scenC1,
                       grassland_lack_scenC2, rangeland_lack_scenC2,
                       grassland_lack_scenC3, rangeland_lack_scenC3,
                       grassland_lack_scenC4, rangeland_lack_scenC4,
                       grassland_lack_scenC5, rangeland_lack_scenC5,
                       grassland_lack_scenC6, rangeland_lack_scenC6,
                       grassland_lack_scenC7, rangeland_lack_scenC7,
                       grassland_lack_scenC8, rangeland_lack_scenC8,
                       grassland_lack_scenC9, rangeland_lack_scenC9,
                       grassland_lack_scenC10, rangeland_lack_scenC10,
                       grassland_lack_scenC11, rangeland_lack_scenC11
)
scenario_lack <- rep(c("DEED_ADAPT_ESP_MOUTAIN", "ESP_MOUTAIN_CC", "ESP_MOUTAIN_CC_FM1", "ESP_MOUTAIN_CC_FM2", 
                       "ESP_MOUTAIN_CC_FM3", "ESP_MOUTAIN_CC_HM1", "ESP_MOUTAIN_CC_HM2", "ESP_MOUTAIN_CC_HM3",
                       "ESP_MOUTAIN_CC_HM4", "ESP_MOUTAIN_CC_HM4B", "ESP_DRYLANDS", "ESP_DRYLANDS_CC", "ESP_DRYLANDS_CC_FeedM1",
                       "ESP_DRYLANDS_CC_FM1", "ESP_DRYLANDS_CC_FM2", "ESP_DRYLANDS_CC_FM3", "ESP_DRYLANDS_CC_HM1", "ESP_DRYLANDS_CC_HM2",
                       "ESP_DRYLANDS_CC_HM3", "ESP_DRYLANDS_CC_HM4", "ESP_DRYLANDS_CC_HM4B", "OVC", "OVC_CC", "OVC_CC_FM1", "OVC_CC_FM1B",
                       "OVC_CC_FM2", "OVC_CC_HM1", "OVC_CC_HM2", "OVC_CC_HM3", "OVC_CC_HM3B", "OVC_FeedM1", 
                       "OVH", "OVH_CC", "OVH_CC_FeedM1", "OVH_CC_FM1", "OVH_CC_FM2", "OVH_CC_FM3", "OVH_CC_HM1", 
                       "OVH_CC_HM2", "OVH_CC_HM3", "OVH_CC_HM4", "OVH_CC_HM4B"
), each = 2)
nom <- rep(c("Grassland lack", "Rangeland lack"), times =42)

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
                 taux_paturage_scenB10, auto_four_scenB10, auto_concen_scenB10,
                 taux_paturage_scenC1, auto_four_scenC1, auto_concen_scenC1,
                 taux_paturage_scenC2, auto_four_scenC2, auto_concen_scenC2,
                 taux_paturage_scenC3, auto_four_scenC3, auto_concen_scenC3,
                 taux_paturage_scenC4, auto_four_scenC4, auto_concen_scenC4,
                 taux_paturage_scenC5, auto_four_scenC5, auto_concen_scenC5,
                 taux_paturage_scenC6, auto_four_scenC6, auto_concen_scenC6,
                 taux_paturage_scenC7, auto_four_scenC7, auto_concen_scenC7,
                 taux_paturage_scenC8, auto_four_scenC8, auto_concen_scenC8,
                 taux_paturage_scenC9, auto_four_scenC9, auto_concen_scenC9,
                 taux_paturage_scenC10, auto_four_scenC10, auto_concen_scenC10,
                 taux_paturage_scenC11, auto_four_scenC11, auto_concen_scenC11
                 
)

scenario_taux <- rep(c("DEED_ADAPT_ESP_MOUTAIN", "ESP_MOUTAIN_CC", "ESP_MOUTAIN_CC_FM1", "ESP_MOUTAIN_CC_FM2", 
                       "ESP_MOUTAIN_CC_FM3", "ESP_MOUTAIN_CC_HM1", "ESP_MOUTAIN_CC_HM2", "ESP_MOUTAIN_CC_HM3",
                       "ESP_MOUTAIN_CC_HM4", "ESP_MOUTAIN_CC_HM4B", "ESP_DRYLANDS", "ESP_DRYLANDS_CC", "ESP_DRYLANDS_CC_FeedM1",
                       "ESP_DRYLANDS_CC_FM1", "ESP_DRYLANDS_CC_FM2", "ESP_DRYLANDS_CC_FM3", "ESP_DRYLANDS_CC_HM1", "ESP_DRYLANDS_CC_HM2",
                       "ESP_DRYLANDS_CC_HM3", "ESP_DRYLANDS_CC_HM4", "ESP_DRYLANDS_CC_HM4B", "OVC", "OVC_CC", "OVC_CC_FM1", "OVC_CC_FM1B",
                       "OVC_CC_FM2", "OVC_CC_HM1", "OVC_CC_HM2", "OVC_CC_HM3", "OVC_CC_HM3B", "OVC_FeedM1", 
                       "OVH", "OVH_CC", "OVH_CC_FeedM1", "OVH_CC_FM1", "OVH_CC_FM2", "OVH_CC_FM3", "OVH_CC_HM1", 
                       "OVH_CC_HM2", "OVH_CC_HM3", "OVH_CC_HM4", "OVH_CC_HM4B"
), each = 3)

nom <- rep(c("taux de paturage", "autonomie fouragère", "autonomie en concentrée"), times = 42 )
tt <- data.frame(scenario_taux, nom, taux_compar)
tt <- spread(tt, key = nom, value = taux_compar)


# cinquième partie
effectif_des_animaux <- rbind(data2, data2_scen2, data2_scen3, data2_scen4, data2_scen5, data2_scen6,
                              data2_scen7, data2_scen8, data2_scen9, data2_scen10, data2_scenA1,
                              data2_scenA2, data2_scenA3, data2_scenA4, data2_scenA5, data2_scenA6,
                              data2_scenA7, data2_scenA8, data2_scenA9, data2_scenA10, data2_scenA11,
                              data2_scenB1, data2_scenB2, data2_scenB3, data2_scenB4, data2_scenB5, data2_scenB6,
                              data2_scenB7, data2_scenB8, data2_scenB9, data2_scenB10, data2_scenC1, data2_scenC2, data2_scenC3, data2_scenC4 ,data2_scenC5,
                              data2_scenC6, data2_scenC7, data2_scenC8, data2_scenC9, data2_scenC10, data2_scenC11
                              )
scenario_effectif_animaux <- rep(c("DEED_ADAPT_ESP_MOUTAIN", "ESP_MOUTAIN_CC", "ESP_MOUTAIN_CC_FM1", "ESP_MOUTAIN_CC_FM2", 
                                   "ESP_MOUTAIN_CC_FM3", "ESP_MOUTAIN_CC_HM1", "ESP_MOUTAIN_CC_HM2", "ESP_MOUTAIN_CC_HM3",
                                   "ESP_MOUTAIN_CC_HM4", "ESP_MOUTAIN_CC_HM4B", "ESP_DRYLANDS", "ESP_DRYLANDS_CC", "ESP_DRYLANDS_CC_FeedM1",
                                   "ESP_DRYLANDS_CC_FM1", "ESP_DRYLANDS_CC_FM2", "ESP_DRYLANDS_CC_FM3", "ESP_DRYLANDS_CC_HM1", "ESP_DRYLANDS_CC_HM2",
                                   "ESP_DRYLANDS_CC_HM3", "ESP_DRYLANDS_CC_HM4", "ESP_DRYLANDS_CC_HM4B", "OVC", "OVC_CC", "OVC_CC_FM1", "OVC_CC_FM1B",
                                   "OVC_CC_FM2", "OVC_CC_HM1", "OVC_CC_HM2", "OVC_CC_HM3", "OVC_CC_HM3B", "OVC_FeedM1", 
                                   "OVH", "OVH_CC", "OVH_CC_FeedM1", "OVH_CC_FM1", "OVH_CC_FM2", "OVH_CC_FM3", "OVH_CC_HM1", 
                                   "OVH_CC_HM2", "OVH_CC_HM3", "OVH_CC_HM4", "OVH_CC_HM4B"
), each = 4)
effectif_scenar <- data.frame(scenario_effectif_animaux, effectif_des_animaux)
effectif_scenar <- spread(effectif_scenar, key = parameters , value = value)



#sixième partie
grain_consom_compar5 <- rbind(data_ressource[9,], data_ressource[1,], data_ressource[10,], data_ressource[2,],
                              data_ressource_scen2[9,], data_ressource_scen2[1,], data_ressource_scen2[10,], data_ressource_scen2[2,],
                              data_ressource_scen3[9,], data_ressource_scen3[1,], data_ressource_scen3[10,], data_ressource_scen3[2,],
                              data_ressource_scen4[9,], data_ressource_scen4[1,], data_ressource_scen4[10,], data_ressource_scen4[2,],
                              data_ressource_scen5[9,], data_ressource_scen5[1,], data_ressource_scen5[10,], data_ressource_scen5[2,],
                              data_ressource_scen6[9,], data_ressource_scen6[1,], data_ressource_scen6[10,], data_ressource_scen6[2,],
                              data_ressource_scen7[9,], data_ressource_scen7[1,], data_ressource_scen7[10,], data_ressource_scen7[2,],
                              data_ressource_scen8[9,], data_ressource_scen8[1,], data_ressource_scen8[10,], data_ressource_scen8[2,],
                              data_ressource_scen9[9,], data_ressource_scen9[1,], data_ressource_scen9[10,], data_ressource_scen9[2,],
                              data_ressource_scen10[9,], data_ressource_scen10[1,], data_ressource_scen10[10,], data_ressource_scen10[2,],
                              data_ressource_scenA1[9,], data_ressource_scenA1[1,], data_ressource_scenA1[10,], data_ressource_scenA1[2,],
                              data_ressource_scenA2[9,], data_ressource_scenA2[1,], data_ressource_scenA2[10,], data_ressource_scenA2[2,],
                              data_ressource_scenA3[9,], data_ressource_scenA3[1,], data_ressource_scenA3[10,], data_ressource_scenA3[2,],
                              data_ressource_scenA4[9,], data_ressource_scenA4[1,], data_ressource_scenA4[10,], data_ressource_scenA4[2,],
                              data_ressource_scenA5[9,], data_ressource_scenA5[1,], data_ressource_scenA5[10,], data_ressource_scenA5[2,],
                              data_ressource_scenA6[9,], data_ressource_scenA6[1,], data_ressource_scenA6[10,], data_ressource_scenA6[2,],
                              data_ressource_scenA7[9,], data_ressource_scenA7[1,], data_ressource_scenA7[10,], data_ressource_scenA7[2,],
                              data_ressource_scenA8[9,], data_ressource_scenA8[1,], data_ressource_scenA8[10,], data_ressource_scenA8[2,],
                              data_ressource_scenA9[9,], data_ressource_scenA9[1,], data_ressource_scenA9[10,], data_ressource_scenA9[2,],
                              data_ressource_scenA10[9,], data_ressource_scenA10[1,], data_ressource_scenA10[10,], data_ressource_scenA10[2,],
                              data_ressource_scenA11[9,], data_ressource_scenA11[1,], data_ressource_scenA11[10,], data_ressource_scenA11[2,],
                              data_ressource_scenB1[9,], data_ressource_scenB1[1,], data_ressource_scenB1[10,], data_ressource_scenB1[2,],
                              data_ressource_scenB2[9,], data_ressource_scenB2[1,], data_ressource_scenB2[10,], data_ressource_scenB2[2,],
                              data_ressource_scenB3[9,], data_ressource_scenB3[1,], data_ressource_scenB3[10,], data_ressource_scenB3[2,],
                              data_ressource_scenB4[9,], data_ressource_scenB4[1,], data_ressource_scenB4[10,], data_ressource_scenB4[2,],
                              data_ressource_scenB5[9,], data_ressource_scenB5[1,], data_ressource_scenB5[10,], data_ressource_scenB5[2,],
                              data_ressource_scenB6[9,], data_ressource_scenB6[1,], data_ressource_scenB6[10,], data_ressource_scenB6[2,],
                              data_ressource_scenB7[9,], data_ressource_scenB7[1,], data_ressource_scenB7[10,], data_ressource_scenB7[2,],
                              data_ressource_scenB8[9,], data_ressource_scenB8[1,], data_ressource_scenB8[10,], data_ressource_scenB8[2,],
                              data_ressource_scenB9[9,], data_ressource_scenB9[1,], data_ressource_scenB9[10,], data_ressource_scenB9[2,],
                              data_ressource_scenB10[9,], data_ressource_scenB10[1,], data_ressource_scenB10[10,], data_ressource_scenB10[2,],
                              data_ressource_scenC1[9,], data_ressource_scenC1[1,], data_ressource_scenC1[10,], data_ressource_scenC1[2,],
                              data_ressource_scenC2[9,], data_ressource_scenC2[1,], data_ressource_scenC2[10,], data_ressource_scenC2[2,],
                              data_ressource_scenC3[9,], data_ressource_scenC3[1,], data_ressource_scenC3[10,], data_ressource_scenC3[2,],
                              data_ressource_scenC4[9,], data_ressource_scenC4[1,], data_ressource_scenC4[10,], data_ressource_scenC4[2,],
                              data_ressource_scenC5[9,], data_ressource_scenC5[1,], data_ressource_scenC5[10,], data_ressource_scenC5[2,],
                              data_ressource_scenC6[9,], data_ressource_scenC6[1,], data_ressource_scenC6[10,], data_ressource_scenC6[2,],
                              data_ressource_scenC7[9,], data_ressource_scenC7[1,], data_ressource_scenC7[10,], data_ressource_scenC7[2,],
                              data_ressource_scenC8[9,], data_ressource_scenC8[1,], data_ressource_scenC8[10,], data_ressource_scenC8[2,],
                              data_ressource_scenC9[9,], data_ressource_scenC9[1,], data_ressource_scenC9[10,], data_ressource_scenC9[2,],
                              data_ressource_scenC10[9,], data_ressource_scenC10[1,], data_ressource_scenC10[10,], data_ressource_scenC10[2,],
                              data_ressource_scenC11[9,], data_ressource_scenC11[1,], data_ressource_scenC11[10,], data_ressource_scenC11[2,]
)
scenario_grain_conso5 <- rep(c("DEED_ADAPT_ESP_MOUTAIN", "ESP_MOUTAIN_CC", "ESP_MOUTAIN_CC_FM1", "ESP_MOUTAIN_CC_FM2", 
                               "ESP_MOUTAIN_CC_FM3", "ESP_MOUTAIN_CC_HM1", "ESP_MOUTAIN_CC_HM2", "ESP_MOUTAIN_CC_HM3",
                               "ESP_MOUTAIN_CC_HM4", "ESP_MOUTAIN_CC_HM4B", "ESP_DRYLANDS", "ESP_DRYLANDS_CC", "ESP_DRYLANDS_CC_FeedM1",
                               "ESP_DRYLANDS_CC_FM1", "ESP_DRYLANDS_CC_FM2", "ESP_DRYLANDS_CC_FM3", "ESP_DRYLANDS_CC_HM1", "ESP_DRYLANDS_CC_HM2",
                               "ESP_DRYLANDS_CC_HM3", "ESP_DRYLANDS_CC_HM4", "ESP_DRYLANDS_CC_HM4B", "OVC", "OVC_CC", "OVC_CC_FM1", "OVC_CC_FM1B",
                               "OVC_CC_FM2", "OVC_CC_HM1", "OVC_CC_HM2", "OVC_CC_HM3", "OVC_CC_HM3B", "OVC_FeedM1", 
                               "OVH", "OVH_CC", "OVH_CC_FeedM1", "OVH_CC_FM1", "OVH_CC_FM2", "OVH_CC_FM3", "OVH_CC_HM1", 
                               "OVH_CC_HM2", "OVH_CC_HM3", "OVH_CC_HM4", "OVH_CC_HM4B"), each = 4)

grain_rang_compar <- data.frame(scenario_grain_conso5, grain_consom_compar5 )
gt <- spread(grain_rang_compar, key = Nature, value = Qte)
ji <- select(gt, 1, 2,3)
nb <- spread(ji, key = type, value = Acheté )
colnames(nb) <- c("scenario", "Forage Acheté", "Grain Acheté")

ty <- select(gt, 1, 2,4)
fq <- spread(ty, key = type, value = Produit)
colnames(fq) <- c("scenario", "Forage produit", "Grain produit")

data_compar_buy_conso <- cbind(fq, nb)
data_compar_buy_conso <- select(data_compar_buy_conso, 1, 2, 3, 5, 6)

data_frame1 <- data_compar_buy_conso %>%
  mutate("Forage Acheté "= - `Forage Acheté`)

data_frame1 <- data_frame1 %>%
  mutate("Grain Acheté "= - `Grain Acheté`)

data_frame1 <- select(data_frame1, 1, 2, 3, 6, 7)


# Autre comparaison 
data_ingest_par_femelle <- rbind(grain_ingest_par_fememlle, forage_ingest_par_fememlle,
                                 grain_ingest_par_fememlle_scen2, forage_ingest_par_fememlle_scen2,
                                 grain_ingest_par_fememlle_scen3, forage_ingest_par_fememlle_scen3,
                                 grain_ingest_par_fememlle_scen4, forage_ingest_par_fememlle_scen4,
                                 grain_ingest_par_fememlle_scen5, forage_ingest_par_fememlle_scen5,
                                 grain_ingest_par_fememlle_scen6, forage_ingest_par_fememlle_scen6,
                                 grain_ingest_par_fememlle_scen7, forage_ingest_par_fememlle_scen7,
                                 grain_ingest_par_fememlle_scen8, forage_ingest_par_fememlle_scen8,
                                 grain_ingest_par_fememlle_scen9, forage_ingest_par_fememlle_scen9,
                                 grain_ingest_par_fememlle_scen10, forage_ingest_par_fememlle_scen2,
                                 grain_ingest_par_fememlle_scenA1, forage_ingest_par_fememlle_scenA1,
                                 grain_ingest_par_fememlle_scenA2, forage_ingest_par_fememlle_scenA2,
                                 grain_ingest_par_fememlle_scenA3, forage_ingest_par_fememlle_scenA3,
                                 grain_ingest_par_fememlle_scenA4, forage_ingest_par_fememlle_scenA4,
                                 grain_ingest_par_fememlle_scenA5, forage_ingest_par_fememlle_scenA5,
                                 grain_ingest_par_fememlle_scenA6, forage_ingest_par_fememlle_scenA6,
                                 grain_ingest_par_fememlle_scenA7, forage_ingest_par_fememlle_scenA7,
                                 grain_ingest_par_fememlle_scenA8, forage_ingest_par_fememlle_scenA8,
                                 grain_ingest_par_fememlle_scenA9, forage_ingest_par_fememlle_scenA9,
                                 grain_ingest_par_fememlle_scenA10, forage_ingest_par_fememlle_scenA10,
                                 grain_ingest_par_fememlle_scenA11, forage_ingest_par_fememlle_scenA11,
                                 grain_ingest_par_fememlle_scenB1, forage_ingest_par_fememlle_scenB1,
                                 grain_ingest_par_fememlle_scenB2, forage_ingest_par_fememlle_scenB2,
                                 grain_ingest_par_fememlle_scenB3, forage_ingest_par_fememlle_scenB3,
                                 grain_ingest_par_fememlle_scenB4, forage_ingest_par_fememlle_scenB4,
                                 grain_ingest_par_fememlle_scenB5, forage_ingest_par_fememlle_scenB5,
                                 grain_ingest_par_fememlle_scenB6, forage_ingest_par_fememlle_scenB6,
                                 grain_ingest_par_fememlle_scenB7, forage_ingest_par_fememlle_scenB7,
                                 grain_ingest_par_fememlle_scenB8, forage_ingest_par_fememlle_scenB8,
                                 grain_ingest_par_fememlle_scenB9, forage_ingest_par_fememlle_scenB9,
                                 grain_ingest_par_fememlle_scenB10, forage_ingest_par_fememlle_scenB10,
                                 grain_ingest_par_fememlle_scenC1, forage_ingest_par_fememlle_scenC1,
                                 grain_ingest_par_fememlle_scenC2, forage_ingest_par_fememlle_scenC2,
                                 grain_ingest_par_fememlle_scenC3, forage_ingest_par_fememlle_scenC3,
                                 grain_ingest_par_fememlle_scenC4, forage_ingest_par_fememlle_scenC4,
                                 grain_ingest_par_fememlle_scenC5, forage_ingest_par_fememlle_scenC5,
                                 grain_ingest_par_fememlle_scenC6, forage_ingest_par_fememlle_scenC6,
                                 grain_ingest_par_fememlle_scenC7, forage_ingest_par_fememlle_scenC7,
                                 grain_ingest_par_fememlle_scenC8, forage_ingest_par_fememlle_scenC8,
                                 grain_ingest_par_fememlle_scenC9, forage_ingest_par_fememlle_scenC9,
                                 grain_ingest_par_fememlle_scenC10, forage_ingest_par_fememlle_scenC10,
                                 grain_ingest_par_fememlle_scenC11, forage_ingest_par_fememlle_scenC11
)
scenario_ingest <- rep(c("DEED_ADAPT_ESP_MOUTAIN", "ESP_MOUTAIN_CC", "ESP_MOUTAIN_CC_FM1", "ESP_MOUTAIN_CC_FM2", 
                         "ESP_MOUTAIN_CC_FM3", "ESP_MOUTAIN_CC_HM1", "ESP_MOUTAIN_CC_HM2", "ESP_MOUTAIN_CC_HM3",
                         "ESP_MOUTAIN_CC_HM4", "ESP_MOUTAIN_CC_HM4B", "ESP_DRYLANDS", "ESP_DRYLANDS_CC", "ESP_DRYLANDS_CC_FeedM1",
                         "ESP_DRYLANDS_CC_FM1", "ESP_DRYLANDS_CC_FM2", "ESP_DRYLANDS_CC_FM3", "ESP_DRYLANDS_CC_HM1", "ESP_DRYLANDS_CC_HM2",
                         "ESP_DRYLANDS_CC_HM3", "ESP_DRYLANDS_CC_HM4", "ESP_DRYLANDS_CC_HM4B", "OVC", "OVC_CC", "OVC_CC_FM1", "OVC_CC_FM1B",
                         "OVC_CC_FM2", "OVC_CC_HM1", "OVC_CC_HM2", "OVC_CC_HM3", "OVC_CC_HM3B", "OVC_FeedM1",
                         "OVH", "OVH_CC", "OVH_CC_FeedM1", "OVH_CC_FM1", "OVH_CC_FM2", "OVH_CC_FM3", "OVH_CC_HM1", "OVH_CC_HM2", 
                         "OVH_CC_HM3", "OVH_CC_HM4", "OVH_CC_HM4B"), each = 2)
name_ingest <-  rep(c("Grain ingest", "Forage ingest"), times = 42)
data_ingest_compar <- data.frame(scenario_ingest, name_ingest, data_ingest_par_femelle)
ingest_compar <- spread(data_ingest_compar, key = name_ingest , value = data_ingest_par_femelle)


# Autre visualisation 
surface_compar <- rbind(plot_man, plot_man_scen2, plot_man_scen3, plot_man_scen4, plot_man_scen5, plot_man_scen6, plot_man_scen7, plot_man_scen8,
                        plot_man_scen9, plot_man_scen10, plot_man_scenA1, plot_man_scenA2, plot_man_scenA3, plot_man_scenA4, plot_man_scenA5, plot_man_scenA6,
                        plot_man_scenA7, plot_man_scenA8, plot_man_scenA9, plot_man_scenA10, plot_man_scenA11, plot_man_scenB1, plot_man_scenB2,
                        plot_man_scenB3, plot_man_scenB4, plot_man_scenB5, plot_man_scenB6, plot_man_scenB7, plot_man_scenB8, plot_man_scenB9,
                        plot_man_scenB10, plot_man_scenC1, plot_man_scenC2, plot_man_scenC3, plot_man_scenC4, plot_man_scenC5, plot_man_scenC6, plot_man_scenC7,
                        plot_man_scenC8, plot_man_scenC9, plot_man_scenC10, plot_man_scenC11)
scenario_effectif <- rep(c("DEED_ADAPT_ESP_MOUTAIN", "ESP_MOUTAIN_CC", "ESP_MOUTAIN_CC_FM1", "ESP_MOUTAIN_CC_FM2", 
                           "ESP_MOUTAIN_CC_FM3", "ESP_MOUTAIN_CC_HM1", "ESP_MOUTAIN_CC_HM2", "ESP_MOUTAIN_CC_HM3",
                           "ESP_MOUTAIN_CC_HM4", "ESP_MOUTAIN_CC_HM4B", "ESP_DRYLANDS", "ESP_DRYLANDS_CC", "ESP_DRYLANDS_CC_FeedM1",
                           "ESP_DRYLANDS_CC_FM1", "ESP_DRYLANDS_CC_FM2", "ESP_DRYLANDS_CC_FM3", "ESP_DRYLANDS_CC_HM1", "ESP_DRYLANDS_CC_HM2",
                           "ESP_DRYLANDS_CC_HM3", "ESP_DRYLANDS_CC_HM4", "ESP_DRYLANDS_CC_HM4B", "OVC", "OVC_CC", "OVC_CC_FM1", "OVC_CC_FM1B",
                           "OVC_CC_FM2", "OVC_CC_HM1", "OVC_CC_HM2", "OVC_CC_HM3", "OVC_CC_HM3B", "OVC_FeedM1",
                           "OVH", "OVH_CC", "OVH_CC_FeedM1", "OVH_CC_FM1", "OVH_CC_FM2", "OVH_CC_FM3", "OVH_CC_HM1", "OVH_CC_HM2", 
                           "OVH_CC_HM3", "OVH_CC_HM4", "OVH_CC_HM4B"), each = 4)
surface_compar <- data.frame(scenario_effectif, surface_compar)


