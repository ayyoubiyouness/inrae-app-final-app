x <- "DEED_ADAPT_OVH_CC_FM2"
Outputs_requirements <- read_output_requirement(x)
feed_ingested <- read_feed_ingested(x)
farm_prod <-  read_farm_production(x)
requirement_herd <- read_heard_requirement(x)
Feed_Available <- read_feed_available(x)
biotech <- read_biotech_parameters(x)
plot_management <- read_plot_management(x)
used_surface <- read_used_surfaces(x)
periods_scenC5 <- read_grazing_periods(x)

# Scenario 1 
# Vis 1
data2_scenC5 <- filter(biotech, parameters %in% c('nb_female', 
                                                  'nb_young',
                                                  'nb_male', 'nb_birth'))

# Vis 3
stadephysio_scenC5 <- filter(biotech, parameters %in% c('lamb_require', 
                                                        'fattening_require',
                                                        'lamb_ewe_s1_require',
                                                        'lamb_ewe_s2_require',
                                                        'empty_require',
                                                        'end_gest_require',
                                                        'beg_lact_require',
                                                        'male_require'
))


#Paramètres de sortie
data_scenC5 <- read_output_data(x = Outputs_requirements, y = Feed_Available )
# Vis a

data_radio_scenC5 <- read_data_radio(Outputs_requirements)
#Vis b

data3_radio_scenC5 <- read_data3_radio(Outputs_requirements)

# Indicateur de performance
# Données pour représenter le produit et le consommé 

# calcul du rendement
# calcul des quantités produites 
output_rend_rang <- read_rend_grass_range_produced()

data_ressource_scenC5 <- output_rend_rang[[1]]
rendem2 <- output_rend_rang[[2]]
rendem <- output_rend_rang[[3]]
# Vis c
# Pour calculer la quantité de Grain consommé 
data_grain <- output_rend_rang[[4]]
data_forrage <- output_rend_rang[[5]]
output_consum <- read_consumed()


grain_ingest_par_fememlle_scenC5  <- output_consum[[1]]
forage_ingest_par_fememlle_scenC5  <- output_consum[[2]]
light_young_scenC5  <- output_consum[[3]]
heavy_young_scenC5  <- output_consum[[4]]
female_culled_scenC5  <- output_consum[[5]]

#Calcul du taux de paturage, de l'autonomie fourragère et de l'autonomie en concentré 
output_taux_scenC5  <- read_taux()
taux_paturage_scenC5  <- output_taux[[1]]
auto_four_scenC5  <- output_taux[[2]]
auto_concen_scenC5  <- output_taux[[3]]

# Vis 2

a <- c( rendem2, rendem )
v <- c("pt", "pp")

rendement_scenC5 <- data.frame(type = v, valeur = a)

a <- select(plot_management, taille, id_mod_expl_comp)

plot_man_scenC5 <- as.data.frame(by(a$taille, list(a$id_mod_expl_comp), sum))
plot_man_scenC5 <- cbind(rownames(plot_man_scenC5), plot_man_scenC5)
colnames(plot_man_scenC5 ) <- c("Surface", "taille")

# Nombre de jours où les ressources ne sont pas disponibles 

grassland_lack_scenC5 <- round(mean(feed_ingested$`Grassland lack`))
rangeland_lack_scenC5 <- round(mean(feed_ingested$`Rangeland lack`))