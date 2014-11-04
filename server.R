# server.R

library(ggplot2)
# setwd('~/Desktop/STA 504 Advanced Data Visulization/shinyapp/Response Dynamics/')

x <- dataset[[3]][1, ,1]
y <- dataset[[4]][1, ,1]
x <- x[!is.na(x)]
y <- y[!is.na(y)]
df <- data.frame(x,y)

shinyServer(
        function(input, output) {
                
                output$trajactory <- renderPlot({
                        
                        trialnum <- input$trial[1]
                        subjectnum <- input$subject[1]
                        x <- dataset[[3]][trialnum, ,subjectnum]
                        y <- dataset[[4]][trialnum, ,subjectnum]
                        x <- x[!is.na(x)]
                        y <- y[!is.na(y)]
                        df <- data.frame(x,y)
                         ggplot(data=df, aes(x=x, y=y)) +
                                geom_path()
                        
                })
                
        }
                )