# INSERT Libraries HERE
library(shiny)
library(shinythemes)

##########################
##### User interface #####
##########################
ui <- fluidPage(theme = shinytheme("sandstone"),
                
                
                
                
                
                navbarPage(
                  ##########
                  ## Page 1
                  ##########
                  "Pang-Yu Liu (Data Programmer)",
                  
                  tabPanel("About Me",
                           tags$style("
              body {
    /*-moz-transform: scale(0.8, 0.8);  Moz-browsers */
    zoom: 1.75;  /*Other non-webkit browsers */
    zoom: 175%; /* Webkit browsers */
}
              "),
                           ###===Photo===###
                           fluidRow(
                             h2(strong('About Me')),
                             column(3,
                                    
                                    img(src='photo.png', align = "left",height='200',width='200')),
                             
                             column(9,
                                    
                                    p("Pang-Yu Liu is currently a Data Programmer at Cincinnati Children's Hospital Medical Center (CCHMC). He received his MS in statistics from University of Connecticut (UCONN). 
                               His work mainly focuses on developing interactive dashboards that provides statistical graphics and other data visualization methods. 
                               One of his research projects focuses on creating a dashboard that allows users to visualize the Rare Disease Clinical Research Network (RDCRN) dataset from the REDCap system via an API. 
                               This dashboard enables users to understand RDCRN data by using statistical graphics such as box-plots, scatter plots, and swimmer plots, etc.
                               In his graduate study, he hopes to develop innovative statistical methods and combine them with 
                               Rshiny application to create reproducible research and communicate statistical results efficiently and intuitively."),
                                    h6(strong('Phone:'),'860-617-2254'),
                                    h6(strong('Email:'),a(href="mailto:pang-yu.liu@uconn.edu",'pang-yu.liu@uconn.edu', download=NA, target="_blank",style="color:blue;")),
                                    
                                    a(href="pyl_cv.pdf", h6("Download CV"), download=NA, target="_blank",style="color:blue;")
                                    
                                    
                             )),
                           
                           ###===Education===###
                           fluidRow(
                             column(10,
                                    
                                    h2(strong('Education')),
                                    
                                    h6(strong('M.S. in Statistics ')),
                                    h6("Department of Statistics, University of Connecticut, USA"),
                                    h6(strong('B.S. in Public Finance')),
                                    h6("Department of Public Finance, National Chengchi University, Taiwan (R.O.C)")
                                    
                             ),
                             column(2)
                           ),
                           ###===Working Experience===###
                           fluidRow(
                             column(4,
                                    h2(strong('Working Experience')),
                                    h6(strong('Data Programmer'),', 2020-present'),
                                    h6("Cincinnati Children's Hospiatal Medical Center, USA"),
                                    h6(strong('Statistical Programming Internship'),', 2019-2020'),
                                    h6("Boehringer Ingelheim, USA")
                             ),
                             column(8)
                           ),

                           
                           
                  ),
                  
                  ##########
                  ## Page 2
                  ##########
                  tabPanel("Projects",
                           fluidRow(h2(strong('Projects')),
                                    column(8,tags$li(strong('Covid-19-Dashboard-in-US'),
                                                     
                                                     '(',
                                                     a("Github",href = "https://github.com/liuc3k/Covid-19-Dashboard-in-US",style="color:blue;"),
                                                     ',',
                                                     a("Demo Video",href = "https://youtu.be/ITmgK070nMg",style="color:blue;"),
                                                     ')'),
                                           h6('Introduction: A R-shiny application for users not only to track Covid-19 cases/deaths in the US map or certain states but also acquire related demographic plots/tables interactively.'),
                                          
                                           fluidRow(
                                             column(8,img(src="Covid19_US_Tracking_App.gif", align = "left",height='250px',width='500px')),
                                             column(4,img(src="Covid19_US_Tracking_App2.gif", align = "left",height='250px',width='500px'))
                                           )
                                           
                                           
                                    ),
                                    column(4)
                           ),
                           br(),
                           br(),
                           fluidRow(
                             column(8,tags$li(strong('Redcap2Rshiny'),
                                              
                                              
                                              '(',
                                              a("Github",href = "https://github.com/liuc3k/Redcap2Rshiny",style="color:blue;"),
                                              
                                              ')'),
                                    h6('Introduction: A R-shiny application makes researcher easier to summarize Rare Diseases Clinical Research Network (RDCRN) data from REDCap by descriptive tables and several statistical plots via API.')
                                    #a("Github",href = "https://github.com/liuc3k/Redcap2Rshiny",style="color:blue;")
                             ),
                             column(4)
                           )
                  )
                  
                  
                  
                  
                  
                  
                  
                  
                  
                )
)


###########################
##### Server function #####
###########################
server <- function(input, output, session) {
  
}

##################################
##### Call shinyApp function #####
##################################
shinyApp(ui = ui, server = server)
