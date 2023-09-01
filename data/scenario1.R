# Changer juste x par le nom du fichier qui contient les documents
x <- "DEED_ADAPT_ESP_MOUTAIN"
Outputs_requirements <- read_output_requirement(x)
feed_ingested <- read_feed_ingested(x)
farm_prod <-  read_farm_production(x)
requirement_herd <- read_heard_requirement(x)
Feed_Available <- read_feed_available(x)
biotech <- read_biotech_parameters(x)
plot_management <- read_plot_management(x)
used_surface <- read_used_surfaces(x)
periods <- read_grazing_periods(x, y = "grazing_periods.xlsx")

# Scenario 1 
# Vis 1
# Ajouter à data2 scen pour un autre scénario
data2 <- filter(biotech, parameters %in% c('nb_female', 
                                           'nb_young',
                                           'nb_male', 'nb_birth'))


# Vis 3
# Ajouter à stadephysio scen pour un autre scenario
stadephysio <- filter(biotech, parameters %in% c('lamb_require', 
                                                 'fattening_require',
                                                 'lamb_ewe_s1_require',
                                                 'lamb_ewe_s2_require',
                                                 'empty_require',
                                                 'end_gest_require',
                                                 'beg_lact_require',
                                                 'male_require'
))


#Paramètres de sortie
# Ajouter à data scen pour un autre scenario
data <- read_output_data(x = Outputs_requirements, y = Feed_Available )
# Vis a
# Ajouter à data_radio scen pour un autre scenario
data_radio <- read_data_radio(Outputs_requirements)
#Vis b
# Ajouter à data3_radio scen pour un autre scenario
data3_radio <- read_data3_radio(Outputs_requirements)
# Indicateur de performance
# Données pour représenter le produit et le consommé 

# calcul du rendement
# calcul des quantités produites 
output_rend_rang <- read_rend_grass_range_produced()
# Ajouter à data_ressource scen pour un autre scenario
data_ressource <- output_rend_rang[[1]]


rendem2 <- output_rend_rang[[2]]
rendem <- output_rend_rang[[3]]
rendem4 <- output_rend_rang[[7]]
rendem5 <- output_rend_rang[[6]]

# Vis c
# Pour calculer la quantité de Grain consommé
data_grain <- output_rend_rang[[4]]
data_forrage <- output_rend_rang[[5]]
output_consum <- read_consumed()

# Ajouter à ces paramètres scen pour un autre scenario
grain_ingest_par_fememlle <- output_consum[[1]]
forage_ingest_par_fememlle <- output_consum[[2]]
light_young <- output_consum[[3]]
heavy_young <- output_consum[[4]]
female_culled <- output_consum[[5]]

#Calcul du taux de paturage, de l'autonomie fourragère et de l'autonomie en concentré 
output_taux <- read_taux()

# Ajouter à ces paramètres scen pour un autre scenario
taux_paturage <- output_taux[[1]]
auto_four <- output_taux[[2]]
auto_concen <- output_taux[[3]]

# Vis 2

a <- c( rendem2, rendem5, rendem4, rendem )
v <- c("grassland", "mowing", "mowing/grassland", "rangeland")
# Ajouter à rendement scen pour un autre scenario
rendement <- data.frame(type = v, valeur = a)

a <- select(plot_management, taille, id_mod_expl_comp)
taille <- c(0,0,0,0)
# Ajouter à plot_man scen pour un autre scenario
plot_man <- data.frame(Surface = v, taille = taille)
plot_man$taille[1] <- sum(filter(a, id_mod_expl_comp == "grassland")$taille)
plot_man$taille[2] <- sum(filter(a, id_mod_expl_comp == "mowing")$taille)
plot_man$taille[3] <- sum(filter(a, id_mod_expl_comp == "mowing/grassland")$taille)
plot_man$taille[4] <- sum(filter(a, id_mod_expl_comp == "rangeland")$taille)


# Nombre de jours où les ressources ne sont pas disponibles 
# Ajouter à ces paramètres scen pour un autre scenario
grassland_lack <- round(mean(feed_ingested$`Grassland lack`))
rangeland_lack <- round(mean(feed_ingested$`Rangeland lack`))


