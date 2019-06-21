library(shiny)
library(shinyjs)
library(RCurl)

addResourcePath("WAR", "WAR")

ui <- tagList(
  useShinyjs(),
  includeCSS("www/styles.css"), extendShinyjs("www/extend.js"), includeScript("WAR/WebAudioRecorder.min.js"),

  div
  (
             actionButton(inputId = "recordButton", label = "Start opname"),
    disabled(actionButton(inputId = "stopButton"  , label = "Stop opname" ))
  )
)

server <- function(input, output, session)
{
  observe(
    js$webAudioRecorder("wav")
  )

  observeEvent(input$audio,
  {
    # Decode wav file.
    audio <- input$audio
    audio <- gsub('data:audio/wav;base64,', '', audio)
    audio <- gsub(' ', '+', audio)
    audio <- base64Decode(audio, mode = 'raw')

    # Save to file on server.
    inFile <- list()
    inFile$datapath <- "WAR.wav"
    inFile$file <- file(inFile$datapath, 'wb')
    writeBin(audio, inFile$file)
    close(inFile$file)
  })
}

shinyApp(ui = ui, server = server)
