# ui.R

shinyUI(fluidPage(
        
        titlePanel("Plot the reaction trajactory"),
        
        sidebarLayout(    
                sidebarPanel(
                       sliderInput("trial", 
                                   label = "Select Trial number", 
                                   min = 1, max = dim(dataset[[3]])[1], value=1),
                       sliderInput("subject", 
                                   label = "Select subject number", 
                                   min = 1, max = dim(dataset[[3]])[3], value=1)
                       ),
                
                mainPanel(plotOutput("trajactory"))

        )
        
      
        
))
