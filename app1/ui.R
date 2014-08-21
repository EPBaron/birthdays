# Famous Birthdays ui.R program
# This program prompts for an input day and month, and it then displays
# famous people with that birthday

# shinyUI main program
shinyUI(fluidPage(
        titlePanel("Famous Birthday Finder"),
        
        # Sidebar, containing input widgets
        sidebarLayout(
                sidebarPanel(
                        h2("Pick a Birthday"),
                
                # Input month picklist
                selectInput("month", label = h4("Choose a month"), 
                            choices = list("January"=1, "February"=2, "March"=3, "April"=4,
                                           "May"=5, "June"=6, "July"=7, "August"=8,
                                           "September"=9, "October"=10, "November"=11, "December"=12),
                                    selected = 6),
                
                # Input day slider
                # Note: there is no error checking to make sure a valid date is entered.
                # In fact, I use an non-valid date on startup to suppress output
                sliderInput("day", label = h4("Choose a day of the month"), min=1, max=31, value=31),
                
                # A little wisdom from Mother Goose
                helpText("Reminder: Thirty days hath September,\n",
                         "April, June, and November;\n",
                         "February has 28 alone,\n",
                         "All the rest have 31;\n",
                         "Except leap year, that's the time,\n",
                         "When February's days are 29."),
                
                # Input button
                submitButton("Select Date"),
                br(),
                
                # Some festive imagery
                img(src = "birthday.jpg", height = 121, width = 256)
                ),

        # Main display panel
        mainPanel(
                h2("Born on this date"),
                textOutput("text1"),
                
                tableOutput("view")
        )
    )
))
