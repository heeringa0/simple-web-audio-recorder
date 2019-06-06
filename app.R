library(shiny)
library(shinyjs)

ui <- tagList(
  useShinyjs(),
  includeCSS("style.css"),

  selectInput(inputId = "encodingTypeSelect",
              label   = "Convert recorded audio to:",
              choices = c("wav", "mp3", "ogg")),

  div(id="controls",
             actionButton(inputId = "recordButton", label = "Record"),
    disabled(actionButton(inputId = "  stopButton", label = "Stop"  ))
  ),

  br(), div(id="formats"),
  br(), div(id="log"),
  br(), div(id="recordingslist"),

  includeScript("js/WebAudioRecorder.min.js"), extendShinyjs("jsShiny/app.js")
)

server <- function(input, output, session)
{ 
  observe(js$webAudioRecorder())
}

shinyApp(ui = ui, server = server)
