
library(shiny)
library(tidyverse)

categorical_variables = c('cyl', 'vs', 'am', 'gear', 'carb')


shinyUI(fluidPage(

   
    titlePanel(title = div(img(src = "shiny.png", height = 50, width = 100),
                           "Data Exploration Using Shiny")),
    sidebarLayout(
        sidebarPanel(
          h3("Explore mtcars"),
          varSelectInput("continuous_variable", "Select Continuous Variable",
                         data = select(mtcars, -categorical_variables), selected = "cyl"),
          varSelectInput("categorical_variable", "Select Categorical Variable",
                         data = mtcars[categorical_variables], selected = "cyl"),
          sliderInput("bins",
                        "Histogram: Number of bins",
                        min = 2,
                        max = 20,
                        value = 10),
          h4("Plot Variable Map Guide"),
          p("Miles/gallon = mpg", br(),
            "Displacement (cu in.) = disp", br(),
            "Gross Horsepower = hp", br(),
            "Rear Axle ratio = drat", br(),
            "Weight (1000 lbs) = wt", br(),
            "1/4 mile time = qsec", br(),
            "Number of cylinders = cyl", br(),
            "Engine\n(0 = V-shaped, 1 = straight) = vs", br(),
            "Transmission\n(0 = automatic, 1 = manual) = am", br(),
            "Number of forward gears = gear", br(),
            "Number of carburetors = carb")),

       
        mainPanel(
            tabsetPanel(
              tabPanel("Plots for Observing Data Trend", plotOutput("p1"), plotOutput("p2")),
              tabPanel("Plots for Observing Data Correlation", plotOutput("p3")),
              tabPanel("Plots with Observing Inner Subdivision Value", plotOutput("p4"))
              
            )
        )
    )
))
