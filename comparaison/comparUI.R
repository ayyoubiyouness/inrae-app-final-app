ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box( title = "number of animals per category",
        width = 12,
        fluidRow(
          column(4,
                 awesomeCheckboxGroup(
                   inputId = "Id044",
                   label = "Checkboxes", 
                   choices = scenario1,
                   selected = "scenario1",
                   inline = TRUE)
                 
                 ),
          column(4,
                 awesomeCheckboxGroup(
                   inputId = "Id045",
                   label = "Checkboxes", 
                   choices = scenario2,
                   selected = "scenarioA1",
                   inline = TRUE)
                 
          ),
          column(4,
                 awesomeCheckboxGroup(
                   inputId = "Id046",
                   label = "Checkboxes", 
                   choices = scenario3,
                   selected = "scenarioB1",
                   inline = TRUE)
                 
          ),
         
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
             column(4,
                    awesomeCheckboxGroup(
                      inputId = "Id047",
                      label = "ESP_MOUTAIN", 
                      choices = c("ESP_MOUTAIN - initial situation",
                                  "ESP_MOUTAIN - situation under climate change"),
                      
                      )
                    
             ),
             column(4,
                    awesomeCheckboxGroup(
                      inputId = "Id048",
                      label = "ESP_DRYLANDS", 
                      choices = c("ESP_DRYLANDS - initial situation",
                        "ESP_DRYLANDS - situation under climate change"),
                      
                      )
                    
             ),
             column(4,
                    awesomeCheckboxGroup(
                      inputId = "Id049",
                      label = "OVC", 
                      choices = c("OVC - initial situation", 
                                  "OVC - situation under climate change"),
                      selected = "OVC - initial situation"
                      
                      )
                    
             ),
             
           )
      )
    ),
    box( title = "youness el bota",
         width = 12,
         h2("ach kayen assahbi wach kolchi mzyan")
         
    ),
    box( title = "ilyass el kalfoss",
         width = 12,
         plotlyOutput("plot")
         
    ),
    
    box( title = "Rangeland and Grassland lack",
         width = 12,
         fluidRow(
           column(4,
                  awesomeCheckboxGroup(
                    inputId = "Id050",
                    label = "Checkboxes", 
                    choices = scenario1,
                    selected = "scenario1",
                    inline = TRUE)
                  
           ),
           column(4,
                  awesomeCheckboxGroup(
                    inputId = "Id051",
                    label = "Checkboxes", 
                    choices = scenario2,
                    selected = "scenarioA1",
                    inline = TRUE)
                  
           ),
           column(4,
                  awesomeCheckboxGroup(
                    inputId = "Id052",
                    label = "Checkboxes", 
                    choices = scenario3,
                    selected = "scenarioB1",
                    inline = TRUE)
                  
           )
           
         )
    ),
    box( title = "hmed labriouit",
         width = 12,
         highchartOutput("jlol")
         
    ),
    box( title = "taux de paturage, autonomie fouragère, autonomie en concentré",
         width = 12,
         fluidRow(
           column(4,
                  awesomeCheckboxGroup(
                    inputId = "Id053",
                    label = "Checkboxes", 
                    choices = scenario1,
                    selected = "scenario1",
                    inline = TRUE)
                  
           ),
           column(4,
                  awesomeCheckboxGroup(
                    inputId = "Id054",
                    label = "Checkboxes", 
                    choices = scenario2,
                    selected = "scenarioA1",
                    inline = TRUE)
                  
           ),
           column(4,
                  awesomeCheckboxGroup(
                    inputId = "Id055",
                    label = "Checkboxes", 
                    choices = scenario3,
                    selected = "scenarioB1",
                    inline = TRUE)
                  
           )
           
         )
    ),
    box( title = "hmed labriouit",
         width = 12,
         highchartOutput("anas")
         
    ),
    
  )
)
 

