descrip <- function() {
  div( class="column ", 
       id = "lharb",
       fluidRow(
         box( title = "number of animals per category",
              width = 12,
              fluidRow(
                column(3,
                       awesomeCheckboxGroup(
                         inputId = "Id044",
                         label = "Checkboxes", 
                         choices = scenar1,
                         selected = "DEED_ADAPT_ESP_MOUTAIN",
                         inline = TRUE)
                       
                ),
                column(3,
                       awesomeCheckboxGroup(
                         inputId = "Id045",
                         label = "Checkboxes", 
                         choices = scenar2,
                         selected = "ESP_DRYLANDS",
                         inline = TRUE)
                       
                ),
                column(3,
                       awesomeCheckboxGroup(
                         inputId = "Id046",
                         label = "Checkboxes", 
                         choices = scenar3,
                         selected = "OVC",
                         inline = TRUE)
                       
                ),
                column(3,
                       awesomeCheckboxGroup(
                         inputId = "Id0466",
                         label = "Checkboxes", 
                         choices = scenar4,
                         selected = "OVH",
                         inline = TRUE)
                       
                )
                
              )
         )
       ),
       box(
         width = 12,
         highchartOutput(outputId = "youness")
       ),
       fluidRow(
         box( title = "change of seasons",
              width = 12,
              fluidRow(
                column(3,
                       awesomeCheckboxGroup(
                         inputId = "Id047",
                         label = "ESP_MOUTAIN", 
                         choices = c("ESP_MOUTAIN - initial situation",
                                     "ESP_MOUTAIN - situation under climate change"),
                         
                       )
                       
                ),
                column(3,
                       awesomeCheckboxGroup(
                         inputId = "Id048",
                         label = "ESP_DRYLANDS", 
                         choices = c("ESP_DRYLANDS - initial situation",
                                     "ESP_DRYLANDS - situation under climate change"),
                         
                       )
                       
                ),
                column(3,
                       awesomeCheckboxGroup(
                         inputId = "Id049",
                         label = "OVC", 
                         choices = c("OVC - initial situation", 
                                     "OVC - situation under climate change"),
                         selected = "OVC - initial situation"
                         
                       )
                       
                ),
                column(3,
                       awesomeCheckboxGroup(
                         inputId = "Id0499",
                         label = "OVC", 
                         choices = c("OVH - initial situation", 
                                     "OVH - situation under climate change"),
                         selected = "OVH - initial situation"
                         
                       )
                       
                ),
                
              )
         )
       ),
       
       box( title = "Representation",
            width = 12,
            plotlyOutput("ploty")
            
       ),
       
       box( title = "Rangeland and Grassland lack",
            width = 12,
            fluidRow(
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id050",
                       label = "Checkboxes", 
                       choices = scenar1,
                       selected = "DEED_ADAPT_ESP_MOUTAIN",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id051",
                       label = "Checkboxes", 
                       choices = scenar2,
                       selected = "ESP_DRYLANDS",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id052",
                       label = "Checkboxes", 
                       choices = scenar3,
                       selected = "OVC",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id0522",
                       label = "Checkboxes", 
                       choices = scenar4,
                       selected = "OVH",
                       inline = TRUE)
                     
              )
              
            )
       ),
       box( title = "Representation",
            width = 12,
            highchartOutput("jlol")
            
       ),
       box( title = "taux de paturage, autonomie fouragère, autonomie en concentré",
            width = 12,
            fluidRow(
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id053",
                       label = "Checkboxes", 
                       choices = scenar1,
                       selected = "scenario1",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id054",
                       label = "Checkboxes", 
                       choices = scenar2,
                       selected = "scenarioA1",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id055",
                       label = "Checkboxes", 
                       choices = scenar3,
                       selected = "scenarioB1",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id0555",
                       label = "Checkboxes", 
                       choices = scenar4,
                       selected = "scenarioB1",
                       inline = TRUE)
                     
              )
              
            )
       ),
       box( title = "Representation",
            width = 12,
            highchartOutput("anas")
            
       ),
       
       
       box( title = "effectif des animaux par catégorie ",
            width = 12,
            fluidRow(
              column(4,
                     awesomeCheckboxGroup(
                       inputId = "Id056",
                       label = "Checkboxes", 
                       choices = scenar1,
                       selected = "DEED_ADAPT_ESP_MOUTAIN",
                       inline = TRUE)
                     
              ),
              column(4,
                     awesomeCheckboxGroup(
                       inputId = "Id057",
                       label = "Checkboxes", 
                       choices = scenar2,
                       selected = "ESP_DRYLANDS",
                       inline = TRUE)
                     
              ),
              column(4,
                     awesomeCheckboxGroup(
                       inputId = "Id058",
                       label = "Checkboxes", 
                       choices = scenar3,
                       selected = "OVC",
                       inline = TRUE)
                     
              )
              
            )
       ),
       box( title = "Representation",
            width = 12,
            highchartOutput("halima")
            
       ),
       box( title = "Forage et grain ingéré par femelle",
            width = 12,
            fluidRow(
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id059",
                       label = "Checkboxes", 
                       choices = scenar1,
                       selected = "DEED_ADAPT_ESP_MOUTAIN",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id060",
                       label = "Checkboxes", 
                       choices = scenar2,
                       selected = "ESP_DRYLANDS",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id061",
                       label = "Checkboxes", 
                       choices = scenar3,
                       selected = "OVC",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id062",
                       label = "Checkboxes", 
                       choices = scenar4,
                       selected = "OVH",
                       inline = TRUE)
                     
              )
              
            )
       ),
       box( title = "forage and grain ingest",
            width = 12,
            highchartOutput("amina")
            
       ),
       
       box( title = "Grain et fourage ingéré",
            width = 12,
            fluidRow(
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id063",
                       label = "Checkboxes", 
                       choices = scenar1,
                       selected = "DEED_ADAPT_ESP_MOUTAIN",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id064",
                       label = "Checkboxes", 
                       choices = scenar2,
                       selected = "ESP_DRYLANDS",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id065",
                       label = "Checkboxes", 
                       choices = scenar3,
                       selected = "OVC",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id066",
                       label = "Checkboxes", 
                       choices = scenar4,
                       selected = "OVH",
                       inline = TRUE)
                     
              )
              
            )
       ),
       box( title = "Grain et fourage ingéré",
            width = 12,
            highchartOutput("said")
            
       ), 
       
       
       box( title = "Taille des surfaces",
            width = 12,
            fluidRow(
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id067",
                       label = "Checkboxes", 
                       choices = scenar1,
                       selected = "DEED_ADAPT_ESP_MOUTAIN",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id068",
                       label = "Checkboxes", 
                       choices = scenar2,
                       selected = "ESP_DRYLANDS",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id069",
                       label = "Checkboxes", 
                       choices = scenar3,
                       selected = "OVC",
                       inline = TRUE)
                     
              ),
              column(3,
                     awesomeCheckboxGroup(
                       inputId = "Id070",
                       label = "Checkboxes", 
                       choices = scenar4,
                       selected = "OVH",
                       inline = TRUE)
                     
              )
              
            )
       ),
       box( title = "Taille des surfaces",
            width = 12,
            highchartOutput("fatima")
            
       )
  )
}
