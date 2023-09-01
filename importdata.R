# Fonction pour transformer le fichier output requirements
read_output_requirement <- function(x) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", x , "models")
  directory <- file.path(my_directory, "Outputs_requirements.csv" )
  data <- read.csv( directory , header = FALSE)
  
  data <- data %>%
    separate(V1, into = c("cycle0", "cycle", "Date0", "Date", "Herd Requirement 0", "Herd Requirement" ,
                          "Forage ingested 0", "Forage ingested", "Grain ingested 0", "Grain ingested", "Grassland ingested 0", "Grassland ingested",
                          "Rangeland ingested 0", "Rangeland ingested"),
             sep = ";")
  data <- select(data, 2, 4, 6, 8, 10, 12, 14 )
  date_object <- as.Date(data$Date, format = "%Y-%m-%d %H:%M:%S")
  data$Date <- format(date_object, "%Y-%m-%d")
  
  dataa <- data.frame(cycle = as.numeric(data$cycle), Date = data$Date, Herd_Requirement = as.numeric(data$`Herd Requirement`),
                      Forage_ingested = as.numeric(data$`Forage ingested`),
                      Grain_ingested = as.numeric(data$`Grain ingested`), Grassland_ingested = as.numeric(data$`Grassland ingested`), 
                      Rangeland_ingested = as.numeric(data$`Rangeland ingested`))
  
  colnames(dataa) <- c("cycle", "Date", "Herd Requirement", "Forage ingested", "Grain ingested", "Grassland ingested", "Rangeland ingested")
  return(dataa)
  
}
# read_output_requirement("DEED_ADAPT_ESP_MOUTAIN")


# Fonction pour transformer le fichier feed ingested 
read_feed_ingested <- function(x) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", x , "models")
  directory <- file.path(my_directory, "Feed_ingested.csv" )
  data <- read.csv(directory, header = FALSE)
  data <- data %>%
    separate(V1, into = c("Forage ingested0", "Forage ingested", "Grain ingested0", "Grain ingested", "Grassland ingested0", "Grassland ingested" ,
                          "Rangeland ingested0", "Rangeland ingested", "Rangeland lack0", "Rangeland lack", "Grassland lack 0", "Grassland lack"), sep = ";")
  data <- select(data, 2, 4, 6, 8, 10, 12)
  
  dataa <- data.frame(Forage_ingested = as.numeric(data$`Forage ingested`), Grain_ingested = data$`Grain ingested`, Grassland_ingested = as.numeric(data$`Grassland ingested`), Rangeland_ingested = as.numeric(data$`Rangeland ingested`),
                      Rangeland_lack = as.numeric(data$`Rangeland lack`), Grassland_lack = as.numeric(data$`Grassland lack`))
  
  colnames(dataa) <- c("Forage ingested", "Grain ingested", "Grassland ingested", "Rangeland ingested", "Rangeland lack", "Grassland lack")
  return(dataa)
  
}

# read_feed_ingested("DEED_ADAPT_ESP_MOUTAIN")

# Fonction pour transformer le fichier farm production

read_farm_production <- function(x) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", x , "models")
  directory <- file.path(my_directory, "Farm_Productions.csv" )
  data <- read.csv(directory, header = FALSE)
  data <- data %>%
    separate(V1, into = c("Youngs sold 0", "Youngs sold", "Light Youngs sold 0", "Light Youngs sold", "Heavy Youngs sold 0", "Heavy Youngs sold" ,
                          "Female culled 0", "Female culled", "Forage produced 0", "Forage produced", "Grain produced 0", "Grain produced", "female not feed0", "female not feed"), sep = ";")
  data <- select(data, 2, 4, 6, 8, 10, 12)
  
  dataa <- data.frame(Youngs_sold = as.numeric(data$`Youngs sold`), Light_Youngs_sold = as.numeric(data$`Light Youngs sold`), 
                      Heavy_Youngs_sold = as.numeric(data$`Heavy Youngs sold`), Female_culled = as.numeric(data$`Female culled`),
                      Forage_produced = as.numeric(data$`Forage produced`),  Grain_produced = as.numeric(data$`Grain produced`)) 
  
  
  colnames(dataa) <- c("Youngs sold", "Light Youngs sold", "Heavy Youngs sold", "Female culled", "Forage produced", "Grain produced")
  return(dataa)
}
# read_farm_production("DEED_ADAPT_ESP_MOUTAIN")


# Fonction pour transformer le fichier herd requirements

read_heard_requirement <- function(x) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", x  , "models")
  directory <- file.path(my_directory, "Herd_Requirements.txt" )
  data <- read.table(directory, sep = "\n", header = FALSE, stringsAsFactors = FALSE)
  
  data <- data %>%
    separate(V1, into = c("col2", "col3", "col4", "col5", "col6", "col7","col8","col9","col10","col11",
                          "col12","col13"), sep = "; |: ")
  data <- select(data, 2, 4, 6, 8, 10, 12)
  date_object <- as.Date(data$col5, format = "%Y-%m-%d %H:%M:%S")
  data$col5 <- format(date_object, "%Y-%m-%d")
  
  dataa <- data.frame(cycle = as.numeric(data$col3), Date = data$col5, 
                      Herd_size_Female  = as.numeric(data$col7), Herd_size_Young = as.numeric(data$col9),
                      Herd_size_Male = as.numeric(data$col11),  Herd_Requirement = as.numeric(data$col13))
  colnames(dataa) <- c("cycle", "Date", "Herd size Female", "Herd size Young", "Herd size Male", "Herd Requirement")
  return(dataa)
  
}
# read_heard_requirement("DEED_ADAPT_ESP_MOUTAIN")



#Fonction pour transformer le fichier feed available

read_feed_available <- function(x) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", x  , "models")
  directory <- file.path(my_directory, "Feed_Available.txt" )
  data <- read.table(directory, sep = "\n", header = FALSE, stringsAsFactors = FALSE)
  
  data <- data %>%
    separate(V1, into = c("col2", "col3", "col4", "col5", "col6", "col7","col8","col9","col10","col11",
                          "col12","col13"), sep = "; |: ")
  data <- select(data, 2, 4, 6, 8, 10, 12)
  date_object <- as.Date(data$col5, format = "%Y-%m-%d %H:%M:%S")
  data$col5 <- format(date_object, "%Y-%m-%d")
  
  dataa <- data.frame(cycle = as.numeric(data$col3), Date = data$col5, 
                      Forage_available  = as.numeric(data$col7), Grain_Available = as.numeric(data$col9),
                      Grasslands_Available = as.numeric(data$col11),  Rangelands_Available = as.numeric(data$col13))
  colnames(dataa) <- c("cycle", "Date", "Forage_available", "Grain_Available", "Grasslands_Available", "Rangelands_Available")
  return(dataa)
}
# read_feed_available("DEED_ADAPT_ESP_MOUTAIN")


# Fonction pour transformer le fichier biotech parameters
read_biotech_parameters <- function(x) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", "DEED_ADAPT_ESP_MOUTAIN" , "includes")
  directory <- file.path(my_directory, "biotech_parameters.xlsx" )
  data <- read_excel(directory, col_names = FALSE )
  colnames(data) <- c("value")
  data <- data %>%
    separate(value, into = c("col1", "col2"), sep = ";")
  colnames(data) <- c("parameters", "value")
  data <- data[2:nrow(data),]
  data$value <- as.numeric(data$value)
  return(data)
  
}
# read_biotech_parameters("DEED_ADAPT_ESP_MOUTAIN")

# Fonction pour transformer le fichier plot management 
read_plot_management <- function(x) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", x , "includes")
  directory <- file.path(my_directory, "plot_management.xlsx" )
  data <- read_excel(directory, col_names = FALSE )
  colnames(data) <- c("value")
  data <- data %>%
    separate(value, into = c("col1", "col2", "col3", "col4", "col5", "col6",
                             "col7", "col8", "col9", "col10", "col11", "col12", "col13", "col14", 
                             "col15", "col16", "col17", "col18" ), sep = ";")
  colnames(data) <- data[1,]
  data[is.na(data)] = 0
  data <- data[2:nrow(data),]
  data$id_parcelle = as.numeric(data$id_parcelle)
  data$id_exploit = as.numeric(data$id_exploit)
  data$taille = as.numeric(data$taille)
  return(data)
}
# read_plot_management("DEED_ADAPT_ESP_MOUTAIN")


# Fonction pour transformer le fichier used surfaces 
read_used_surfaces <- function(x) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", x , "includes")
  directory <- file.path(my_directory, "surfaces_used.xlsx" )
  data <- read_excel(directory, col_names = FALSE )
  colnames(data) <- c("value")
  data <- data %>%
    separate(value, into = c("col1", "col2", "col3", "col4", "col5", "col6",
                             "col7", "col8", "col9", "col10", "col11", "col12", "col13", "col14", 
                             "col15", "col16"), sep = ";")
  colnames(data) <- data[1,]
  data <- data[2:nrow(data),]
  data$id_type_parc = as.numeric(data$id_type_parc)
  data$yield_prod_begSpring = as.numeric(data$yield_prod_begSpring)
  data$yield_prod_Spring = as.numeric(data$yield_prod_Spring)
  data$yield_prod_Sum = as.numeric(data$yield_prod_Sum)
  data$yield_prod_Aut = as.numeric(data$yield_prod_Aut)
  data$yield_prod_Winter = as.numeric(data$yield_prod_Winter)
  return(data)
}
# read_used_surfaces("DEED_ADAPT_ESP_MOUTAIN")


#Fonction pour transformer le fichier grazing periods
read_grazing_periods <- function(x, y) {
  my_directory <- file.path("www", "Resultats_simulation_Strategies", x , "includes")
  directory <- file.path(my_directory, y )
  data <- read_excel(directory, col_names = FALSE )
  colnames(data) <- c("value")
  data <- data[2:nrow(data), 2:ncol(data)]
  colnames(data) <- c("mois_debut", "jour_debut", "mois_fin", "jour_fin")
  data$jour_debut <- as.numeric(sapply(data$jour_debut, get_first_value))
  periods <- data
  periods$start <- with(periods, paste("2020", sprintf("%02d", mois_debut), sprintf("%02d", jour_debut),  sep = "-"))
  periods$end <- with(periods, paste("2020", sprintf("%02d", mois_fin), sprintf("%02d", jour_fin),   sep = "-"))
  periods <- select(periods, 5,6)
  periods <- data.frame(event = c("beginning of spring", "spring",  "summer", "autumn", "winter"), start = periods$start, end = periods$end)
  endwint <- periods$end[5]
  lastyear <- paste("2020", "12", "31" ,   sep = "-")
  startyear <- paste("2020", "01", "01" ,   sep = "-")
  periods$end[5] <- lastyear
  newlinewinter <- data.frame(event = "winter", start = startyear, end = endwint )
  periods <- rbind(newlinewinter, periods)
  color <- c('#33a1de', '#00a86b', '#4caf50', '#f0d721', '#e98418', '#33a1de')
  periods <- cbind(periods,color)
  return(periods)
}
# read_grazing_periods("DEED_ADAPT_ESP_MOUTAIN")




# Fonctions pour le traitement des données

read_output_data <- function(x, y) {
  Forage_ingest <- calculate_mean_by_cycle(x,  "Forage ingested")
  Grain_ingest <- calculate_mean_by_cycle(x,  "Grain ingested")
  Grassland_ingest <- calculate_mean_by_cycle(x,  "Grassland ingested") 
  Rangeland_ingest <- calculate_mean_by_cycle(x,  "Rangeland ingested") 
  cycle <- calculate_mean_by_cycle(x,  "cycle") 
  
  
  Forage_available <- calculate_mean_by_cycle(y,  "Forage_available") 
  Grain_available <- calculate_mean_by_cycle(y,  "Grain_Available") 
  Grassland_available <- calculate_mean_by_cycle(y,  "Grasslands_Available") 
  Rangeland_available <- calculate_mean_by_cycle(y,  "Rangelands_Available") 
  
  data <- cbind(Forage_ingest, Grain_ingest, Grassland_ingest, Rangeland_ingest,
                Forage_available, Grain_available, Grassland_available, Rangeland_available, cycle )
  
  colnames(data) <- c(
    "Forage_ingest",
    "Grain_ingest",
    "Grassland_ingest",
    "Rangeland_ingest",
    "Forage_available",
    "Grain_available",
    "Grassland_available",
    "Rangeland_available",
    "cycle"
  )
  return(data)
}

# vis a
read_data_radio <- function(x) {
  dates <- seq(as.Date("2020-01-01"), as.Date("2020-12-31"), by = "day")
  dates_formattees <- format(dates, "%d %b")
  Date <- data.frame(Date = dates_formattees)
  Herd_Requirement_mean <- as.data.frame(by(x$'Herd Requirement', list(x$cycle), mean)) 
  Herd_Requirement_min<- as.data.frame(by(x$'Herd Requirement', list(x$cycle), min)) 
  Herd_Requirement_max <- as.data.frame(by(x$'Herd Requirement', list(x$cycle), max)) 
  data_radio <- cbind(dd = a <- seq(1, 366, by =1 ) , Date , Herd_Requirement_mean, Herd_Requirement_min, Herd_Requirement_max )
  colnames(data_radio) <- c("dd" , "Date", "mean", "min", "max")
  return(data_radio)
}
# read_data_radio(Outputs_requirements)

# Vis b
read_data3_radio <- function(x) {
  dates <- seq(as.Date("2020-01-01"), as.Date("2020-12-31"), by = "day")
  dates_formattees <- format(dates, "%d %b")
  Date <- data.frame(Date = dates_formattees)
  Rangeland_ingested_mean <- as.data.frame(by(x$'Rangeland ingested', list(x$cycle), mean))
  Forage_ingested_mean <- as.data.frame(by(x$'Forage ingested', list(x$cycle), mean))
  Grassland_ingested_mean <- as.data.frame(by(x$'Grassland ingested', list(x$cycle), mean))
  Grain_ingested_mean <- as.data.frame(by(x$`Grain ingested`, list(x$cycle), mean))
  data3_radio <- cbind(Date, Rangeland_ingested_mean, Forage_ingested_mean, Grassland_ingested_mean, Grain_ingested_mean)
  colnames(data3_radio) <- c("Date", "Rangeland_ingested", "Forage_ingested", "Grassland_ingested", "Grain_ingested")
  data3_radio <- gather(data3_radio, key="year", value="points", 2:5)
  return(data3_radio)
}

# read_data3_radio(Outputs_requirements)


# Indicateur de performance 
read_rend_grass_range_produced <- function() {
  grain_produced <- mean(farm_prod$`Grain produced`)
  forage_produced <- mean(farm_prod$`Forage produced`)
  # calcul du gras produit 
  # filtrer les données pour grassland
  grass_surf <- filter(plot_management, id_mod_expl_comp =="grassland")
  id_grass_surf <- data.frame()
  
  for (i in 1:nrow(grass_surf)) {
    id_grass <- grass_surf$id_type_parc[i]
    id_grass_surf <- rbind(id_grass_surf, id_grass)
  }
  colnames(id_grass_surf) <- c("numero")
  grass_produced <- 0
  rendem2 <- 0
  for(i in 1:nrow(id_grass_surf)) {
    rt <- id_grass_surf$numero[i]
    somme <- as.integer(rowSums(used_surface[rt,6:10]))
    rendem2 <- somme + rendem2
    taill <- grass_surf$taille[i]
    grass_produced <- grass_produced +somme*taill
    
  }
  # calcul du range produit 
  # filtrer les données pour rangeland
  rang_surf <- filter(plot_management, id_mod_expl_comp =="rangeland")
  id_rang_surf <- data.frame()
  
  for (i in 1:nrow(rang_surf)) {
    id_rang <- rang_surf$id_type_parc[i]
    id_rang_surf <- rbind(id_rang_surf, id_rang)
  }
  colnames(id_rang_surf) <- c("numero")
  rang_produced <- 0
  rendem <- 0
  for(i in 1:nrow(id_rang_surf)) {
    rt <- id_rang_surf$numero[i]
    somme <- as.integer(rowSums(used_surface[rt,6:10]))
    rendem <- rendem + somme
    taill <- rang_surf$taille[i]
    rang_produced <- rang_produced +somme*taill
    
  }
  
  # calcul du rendement pour mowing
  grass_surf <- filter(plot_management, id_mod_expl_comp =="mowing")
  id_grass_surf <- data.frame()
  
  for (i in 1:nrow(grass_surf)) {
    id_grass <- grass_surf$id_type_parc[i]
    id_grass_surf <- rbind(id_grass_surf, id_grass)
  }
  colnames(id_grass_surf) <- c("numero")
  grass_produced <- 0
  rendem5 <- 0
  for(i in 1:nrow(id_grass_surf)) {
    rt <- id_grass_surf$numero[i]
    somme <- as.integer(rowSums(used_surface[rt,6:10]))
    rendem5 <- somme + rendem5
    
    
  }
  
  grass_surf <- filter(plot_management, id_mod_expl_comp =="mowing/grassland")
  id_grass_surf <- data.frame()
  
  for (i in 1:nrow(grass_surf)) {
    id_grass <- grass_surf$id_type_parc[i]
    id_grass_surf <- rbind(id_grass_surf, id_grass)
  }
  colnames(id_grass_surf) <- c("numero")
  grass_produced <- 0
  rendem4 <- 0
  for(i in 1:nrow(id_grass_surf)) {
    rt <- id_grass_surf$numero[i]
    somme <- as.integer(rowSums(used_surface[rt,6:10]))
    rendem4 <- somme + rendem4
    }
  
  
  data_forrage <- moyenne_par_scenario("Forage ingested", Outputs_requirements)
  data_grass <- moyenne_par_scenario("Grassland ingested", Outputs_requirements)
  data_rangela <- moyenne_par_scenario("Rangeland ingested", Outputs_requirements)
  data_grain <- moyenne_par_scenario("Grain ingested", Outputs_requirements)
  a1 <- c(grain_produced, forage_produced, grass_produced , rang_produced ,
          data_grass, data_forrage, data_grain, data_rangela,
          max(0, data_grain - grain_produced), max(0, data_forrage - forage_produced), max(0, data_grass - grass_produced), max(0, data_rangela - rang_produced))
  a2 <- c("Grain", "Forage", "Grass", "Rangeland", 
          "Grass", "Forage", "Grain", "Rangeland",
          "Grain", "Forage", "Grass", "Rangeland"
  )
  a3 <- c("Produit" , "Produit" , "Produit" , "Produit",
          "Consommé", "Consommé", "Consommé", "Consommé",
          "Acheté", "Acheté", "Acheté", "Acheté")
  data_ressource <- data.frame(Nature = a3, type = a2, Qte = a1)
  return(list(data_ressource, rendem2, rendem, data_grain, data_forrage, rendem5, rendem4 ))
  
}


read_consumed <- function() {
  female <- calculate_mean_by_cycle(requirement_herd,  "Herd size Female")
  colnames(female) <- c("herd_size_female")
  female_sum <- sum(female$herd_size_female)
  female_sum2 <- round(female_sum/366)
  grain_ingest_par_fememlle <- data_grain/female_sum2
  
  # Pour calculer la quantité de forrage consommé 
  
  forage_ingest_par_fememlle <- data_forrage/female_sum2
  # Pour calculer le nombre d'animaux produits
  light_young <- round(mean(farm_prod$`Light Youngs sold`))
  heavy_young <- round(mean(farm_prod$`Heavy Youngs sold`))
  female_culled <- round(mean(farm_prod$`Female culled`))
  return(list(grain_ingest_par_fememlle, forage_ingest_par_fememlle, light_young, heavy_young, female_culled  ))
}

read_taux <- function() {
  taux_patu<- data.frame()
  autono_four <- data.frame()
  autono_concen <- data.frame()
  for (i in 1:10) {
    
    taux1 <- ( somme_par_scenario(i, "Grassland ingested", Outputs_requirements) + somme_par_scenario(i, "Rangeland ingested", Outputs_requirements) ) /( somme_par_scenario(i, "Grassland ingested", Outputs_requirements) + somme_par_scenario(i, "Rangeland ingested", Outputs_requirements) + somme_par_scenario(i,  "Forage ingested", Outputs_requirements) )
    taux2 <- ( farm_prod$`Forage produced`[i] + somme_par_scenario(i, "Grassland ingested", Outputs_requirements) + somme_par_scenario(i, "Rangeland ingested", Outputs_requirements)  )/( somme_par_scenario(i, "Grassland ingested", Outputs_requirements) + somme_par_scenario(i, "Rangeland ingested", Outputs_requirements) + somme_par_scenario(i,  "Forage ingested", Outputs_requirements) )
    taux3 <- ( farm_prod$`Grain produced`[1] )/(somme_par_scenario(1, "Grain ingested", Outputs_requirements))
    taux_patu <- rbind(taux_patu, taux1)
    autono_four <- rbind(autono_four, taux2)
    autono_concen <- rbind(autono_concen, taux3)
    
  }
  colnames(taux_patu) <- c("taux")
  colnames(autono_four) <- c("taux")
  colnames(autono_concen) <- c("taux")
  taux_paturage <- mean(taux_patu$taux)
  auto_four <- mean(autono_four$taux)
  auto_concen <- mean(autono_concen$taux)
  return(list(taux_paturage, auto_four, auto_concen))
}





