# Famous Birthdays server.R program
# This program prompts for an input day and month, and it then displays
# famous people with that birthday

# Read birthdays data file
bdays <- read.csv("data/birthdays.csv", header=TRUE)

# shinyServer main function
shinyServer(
        function(input, output) {
                
            # Echo user input
            # (I wish there were an elegant way to surpress this on the first pass)
            output$text1 <- renderText({ 
                paste("You have selected ", input$month, "/", input$day)
            })
               
            # Subset the data file and select output fileds
            bddat <- reactive({outdat <- subset(bdays, Month == input$month & Day == input$day)
                outdat[,4:6]
            })
            
            # Print results to screen, while surpressing row names
            output$view <- renderTable({
                    bddat()
            },include.rownames=FALSE)
})
