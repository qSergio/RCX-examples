#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

dashHeader <- dashboardHeader(title='Simple Dashboard')



dashSidebar <- dashboardSidebar(
    
    sidebarMenu(
        
        menuItem('Home',
                 
                 tabName='HomeTab',
                 
                 icon=icon('dashboard')
                 
        ),
        
        menuItem('Graphs',
                 
                 tabName='GraphsTab',
                 
                 icon=icon('bar-chart-o')
                 
        )
        
    )
)
    


dashBody <- dashboardBody(
    tabItems(
        tabItem(tabName='HomeTab',
                h1('Landing Page!'),
                p('This is the landing page for the dashboard.'),
                em('This text is emphasized')
        ),
        tabItem(tabName='GraphsTab',
                h1('Graphs!'),
                selectInput(inputId='VarToPlot',
                            label='Choose a Variable',
                            choices=c('carat', 'depth',
                                      'table', 'price'),
                            selected='price'),
                plotOutput(outputId='HistPlot')
        )
    )
)

dashboardPage(
    
    header=dashHeader,
    
    sidebar=dashSidebar,
    
    body=dashBody,
    
    title='Example Dashboard',
    skin = "green"
    
)
# 
# # Define UI for application that draws a histogram
# shinyUI(fluidPage(
# 
#     # Application title
#     titlePanel("Old Faithful Geyser Data"),
# 
#     # Sidebar with a slider input for number of bins
#     sidebarLayout(
#         sidebarPanel(
#             sliderInput("bins",
#                         "Number of bins:",
#                         min = 1,
#                         max = 50,
#                         value = 30)
#         ),
# 
#         # Show a plot of the generated distribution
#         mainPanel(
#             plotOutput("distPlot")
#         )
#     )
# ))
