x <- "DEED_ADAPT_OVC_CC_HM3"
Outputs_requirements <- read_output_requirement(x)
feed_ingested <- read_feed_ingested(x)
farm_prod <-  read_farm_production(x)
requirement_herd <- read_heard_requirement(x)
Feed_Available <- read_feed_available(x)
biotech <- read_biotech_parameters(x)
plot_management <- read_plot_management(x)
used_surface <- read_used_surfaces(x)
periods_scenB8 <- periods_scenB2

# Scenario 1 
# Vis 1
data2_scenB8 <- filter(biotech, parameters %in% c('nb_female', 
                                                  'nb_young',
                                                  'nb_male', 'nb_birth'))

# Vis 3
stadephysio_scenB8 <- filter(biotech, parameters %in% c('lamb_require', 
                                                        'fattening_require',
                                                        'lamb_ewe_s1_require',
                                                        'lamb_ewe_s2_require',
                                                        'empty_require',
                                                        'end_gest_require',
                                                        'beg_lact_require',
                                                        'male_require'
))


#Paramètres de sortie
data_scenB8 <- read_output_data(x = Outputs_requirements, y = Feed_Available )
# Vis a

data_radio_scenB8 <- read_data_radio(Outputs_requirements)
#Vis b

data3_radio_scenB8 <- read_data3_radio(Outputs_requirements)

# Indicateur de performance
# Données pour représenter le produit et le consommé 

# calcul du rendement
# calcul des quantités produites 
output_rend_rang <- read_rend_grass_range_produced()

data_ressource_scenB8 <- output_rend_rang[[1]]
rendem2 <- output_rend_rang[[2]]
rendem <- output_rend_rang[[3]]
rendem4 <- output_rend_rang[[7]]
rendem5 <- output_rend_rang[[6]]
# Vis c
# Pour calculer la quantité de Grain consommé 
data_grain <- output_rend_rang[[4]]
data_forrage <- output_rend_rang[[5]]
output_consum_scenB8 <- read_consumed()


grain_ingest_par_fememlle_scenB8  <- output_consum_scenB8[[1]]
forage_ingest_par_fememlle_scenB8  <- output_consum_scenB8[[2]]
light_young_scenB8  <- output_consum_scenB8[[3]]
heavy_young_scenB8  <- output_consum_scenB8[[4]]
female_culled_scenB8  <- output_consum_scenB8[[5]]

#Calcul du taux de paturage, de l'autonomie fourragère et de l'autonomie en concentré 
output_taux_scenB8  <- read_taux()
taux_paturage_scenB8  <- output_taux[[1]]
auto_four_scenB8  <- output_taux[[2]]
auto_concen_scenB8  <- output_taux[[3]]

# Vis 2

a <- c( rendem2, rendem5, rendem4, rendem )
v <- c("grassland", "mowing", "mowing/grassland", "rangeland")

rendement_scenB8 <- data.frame(type = v, valeur = a)

a <- select(plot_management, taille, id_mod_expl_comp)

taille <- c(0,0,0,0)
# Ajouter à plot_man scen pour un autre scenario
plot_man_scenB8 <- data.frame(Surface = v, taille = taille)
plot_man_scenB8$taille[1] <- sum(filter(a, id_mod_expl_comp == "grassland")$taille)
plot_man_scenB8$taille[2] <- sum(filter(a, id_mod_expl_comp == "mowing")$taille)
plot_man_scenB8$taille[3] <- sum(filter(a, id_mod_expl_comp == "mowing/grassland")$taille)
plot_man_scenB8$taille[4] <- sum(filter(a, id_mod_expl_comp == "rangeland")$taille)

# Nombre de jours où les ressources ne sont pas disponibles 

grassland_lack_scenB8 <- round(mean(feed_ingested$`Grassland lack`))
rangeland_lack_scenB8 <- round(mean(feed_ingested$`Rangeland lack`))

