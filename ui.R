library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Check Body Mass Index (BMI)"),
    
    sidebarPanel(
      numericInput('weight', 'Enter your weight in (Kg)', 70) ,
      numericInput('height', 'Enter your height in (meters)', 1.70, min = 0.2, max = 3, step = 0.01),
      submitButton('Submit')
    ), 
    mainPanel( 
      h4('Body Mass Index (BMI) measures Body Fat based on Height and Weight that applies to Adult Men and Women.'),
      h4('As per the BMI measure, below classification will define whether you are:'),
      br(),
      
      tags$div(
        tags$ul(
          tags$li(h4('BMI < 18.5              : Underweight')),
          tags$li(h4('BMI BETWEEN [18.5-24.9] : Normal weight')),
          tags$li(h4('BMI BETWEEN [25.0-29.9] : Overweight')),
          tags$li(h4('BMI >=30                : Obesity'))
        )
      ),
      br(),
      h4('You Entered:'), 
      h4('Weight (in kg):'), verbatimTextOutput("inputweightvalue"),
      h4('Height (in meters):'), verbatimTextOutput("inputheightvalue"),
      br(),
      br(),
      h4('Your BMI is:'),
      verbatimTextOutput("estimation"),
      h4('Based on your BMI calculation, you are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)