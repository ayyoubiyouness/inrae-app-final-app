vis1server <- function(a ) {
  hchart(
    a,
    "item", 
    hcaes(name = parameters, y = value),
    name = "Nombre ",
    id = "serieid"
  )%>%
    hc_exporting(
      enabled = TRUE, # always enabled
      filename = "custom-file-name"
    )
}

vis2server <- function(a, b, c) {
  hc <- highchart() %>%
    hc_add_series(type="column",name = "<b>Par type de ressource et par type d'usage</b>", data = a )%>%
    hc_add_series( type = 'scatter',name = " <b>Rendement</b>", data = b, yAxis = 1 )%>%
    hc_xAxis(categories = c)%>%
    hc_yAxis_multiples(
      list(lineWidth = 0,
           title = list(text = "Par type de ressource et par type d'usage")),
      list(showLastLabel = FALSE, opposite = TRUE,
           title = list(text = "rendement"))
    ) %>%
    
    hc_exporting(
      enabled = TRUE, # always enabled
      filename = "custom-file-name"
    )
  
  hc
}

vis3server <- function(a) {
  datatable(
    a,
    caption = 'Need according to physiological stages ',
    options = list(pageLength = 8, dom = 'tip'))%>%
    formatStyle('value',  color = 'red', backgroundColor = 'orange', fontWeight = 'bold')
}


vis4server <- function(a) {
  vistime(a, optimize_y = TRUE, linewidth = 30)
}


visAserver <- function(a) {
  h1 <- highchart() %>%
    hc_xAxis(categories = a$Date) %>%
    hc_add_series(name = "Herd_Requirement_mean",
                  data = a$mean) %>%
    hc_add_series(name = "Herd_Requirement_min",
                  data = a$min) %>%
    hc_add_series(name = "Herd_Requirement_max",
                  data = a$max) %>%
    hc_exporting(
      enabled = TRUE, # always enabled
      filename = "custom-file-name"
    )
  
  h1
}



visBserver <- function(a) {
  hc <- a %>% 
    hchart('areaspline', hcaes(x = 'Date', y = 'points', group = "year"), stacking = "normal") %>%
    hc_add_series(data_radio, type = 'line', hcaes(x = 'Date', y = 'mean'))%>%
    hc_exporting(
      enabled = TRUE, # always enabled
      filename = "custom-file-name"
    )
  hc
}

visCserver <- function(a) {
  infoBox(
    "", paste(a, "Kg DM/year") , "Forage consumed by each female", 
    icon = tags$i(class = "fa-solid fa-wheat-awn"),
    color = "light-blue"
  )
}

visDserver <- function(a) {
  infoBox(
    "", paste(a, "Kg/year") , "Grain consumed by each female", 
    icon = tags$i(class = "fa-solid fa-wheat-awn-circle-exclamation"),
    color = "light-blue"
  )
  
}

visEserver <- function(a) {
  infoBox(
    "", a , " Light Youngs sold  ", 
    icon = tags$i(class = "fas fa-plus"),
    color = "light-blue"
  )
}

visFserver <- function(a) {
  infoBox(
    "", a , "Heavy Youngs sold", 
    icon = tags$i(class = "fas fa-plus"),
    color = "light-blue"
  )
}

visGserver <- function(a) {
  infoBox(
    "", a , " female culled", 
    icon = tags$i(class = "fas fa-plus"),
    color = "light-blue"
  )
}

visLserver <- function(a) {
  infoBox(
    "", paste(a, "days a year") , "Rangeland lack", 
    icon = tags$i(class = "fas fa-plus"),
    color = "light-blue"
  )
}

visMserver <- function(a) {
  infoBox(
    "", paste(a, "days a year") , " Grassland lack", 
    icon = tags$i(class = "fas fa-plus"),
    color = "light-blue"
  )
}

visHserver <- function(a) {
  hc <- a %>% 
    hchart('column', hcaes(x = 'type', y = 'Qte', group = 'Nature')) %>%
    hc_colors(c("#0073C2FF", "#EFC000FF", "#BDB76B"))
  
  
  hc
}

visIserver <- function(b) {
  a <- round(b * 100,2)
  col_stops <- data.frame(
    q = c(0.15, 0.4, 0.8),
    c = c('#55BF3B', '#DDDF0D', '#DF5353'),
    stringsAsFactors = FALSE
  )
  
  hc <- 
    highchart() %>%
    hc_chart(type = "solidgauge") %>%
    hc_pane(
      startAngle = -150,
      endAngle = 150,
      background = list(
        outerRadius = '100%',
        innerRadius = '60%',
        shape = "arc"
      )
    ) %>%
    hc_tooltip(enabled = FALSE) %>% 
    hc_yAxis(
      stops = list_parse2(col_stops),
      lineWidth = 0,
      minorTickWidth = 0,
      tickAmount = 2,
      min = 0,
      max = 100,
      labels = list(y = 26, style = list(fontSize = "22px"))
    ) %>%
    hc_add_series(
      data = list(a),
      dataLabels = list(
        y = -50,
        borderWidth = 0,
        useHTML = TRUE,
        format = paste0('<div style="text-align:center"><span style="font-size:35px">{y} %</div>')
      )
    ) %>% 
    hc_size(height = 400) %>%
    hc_exporting(
      enabled = TRUE,
      filename = "custom-file-name"
    )
  
  hc
}






