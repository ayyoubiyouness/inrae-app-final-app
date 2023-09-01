scenario <- function(a,  b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v) {
  div(id = a,
      
      div(class="column left-column",
          id = b,
          h4("Initial situation: Input parameters", align = "center"),
          br(),
          fluidRow(
            box(
              width=12,
              title = "Number of animals by category",
              status = "primary",
              
              #height = 3,
              radioButtons(c, label = NULL, inline = TRUE, choices = c("rectangle", "parliment", "circle")),
              
              highchartOutput(d, height = 240),
              height = 450
            )
            
          ),
          fluidRow(
            box(
              width=12,
              title = "Breakdown of surfaces by type of resource and by type of use",
              status = "primary",
              highchartOutput(e)
            ),
          ),
          fluidRow(
            box(
              width=12,
              title = "Needs according to physiological stages",
              status = "primary",
              DTOutput(f))
            
          ),
          fluidRow(
            box(
              width=12,
              title = "Breakdown of the year by seasons",
              status = "primary",
              plotlyOutput(g)
              
            ))
      ),
      div(class = "column right-column",
          id = h,
          h3("Initial situation: Output parameters", align = "center"),
          br(),
          fluidRow(
            box(
              width = 12,
              title = "Resources that animals must consume",
              status = "primary",
              highchartOutput(i),
              dropdown(
                awesomeRadio(
                  inputId = j,
                  label = "Choice of period",
                  
                  choices = list("Per month" = 1, "By season" = 2, "By fortnight" = 3, "Per day" = 4),
                  selected = 1,
                  
                  status = "warning",
                ),
                style = "unite", icon = icon("gear"),
                status = "danger", width = "200px",
                animate = animateOptions(
                  enter = animations$fading_entrances$fadeInLeftBig,
                  exit = animations$fading_exits$fadeOutRightBig
                ),
                up = TRUE
              )
            )
          ),
          fluidRow(
            box(
              width=12,
              title = "Range resources consumed by animals",
              status = "primary",
              highchartOutput(k)
            )
          ),
          
          br(),
          h3("Initial situation: Performance indicator", align = "center"),
          br(),
          fluidRow(
            infoBoxOutput(u, width = 6),
            infoBoxOutput(v, width = 6),
          ),
          
          fluidRow(
            infoBoxOutput(l, width = 6),
            infoBoxOutput(m, width = 6),
          ),

          fluidRow(
            infoBoxOutput(n, width = 6),
            infoBoxOutput(o, width = 6),
          ),

          infoBoxOutput(p, width = 6),
          
          
          
          br(),
          
          box(title = "Quantity of resources consumed and produced",
              width=12,
              status = "primary",
              highchartOutput(q)
          ),
          
          box(
            width=12,
            height = 430,
            title = "Grazing rate",
            status = "primary",
            highchartOutput(r)
          ),
          box(
            width=12,
            height = 430,
            title = "Fodder autonomy",
            status = "primary",
            highchartOutput(s)
          ),
          box(
            width=12,
            height = 430,
            title = "Autonomy in concentrate",
            status = "primary",
            highchartOutput(t)
          )
          
      )
      
      
  )
}



