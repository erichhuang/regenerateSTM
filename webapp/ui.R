## Shiny UI side

## REQUIRE
require(shiny)

## CLIENT SIDE UI
shinyUI(pageWithSidebar(
  # Application Title
  headerPanel('Demonstration Afor "FRDS-Powered App"'),
  
  # Sidebar with controls to select a patient
  sidebarPanel(
    actionButton(inputId = 'runCode', label = 'Run Code'),
    
    br(),
    
    h5('Explanation'),
    
    helpText('Select a patient from the queue using the drag menu above.',
             'When you release, the web application will generate',
             'a range of predictions for the patient based on several',
             'predictive models.'),
    
    helpText('Click on the tabs to see other visualizations or analyses.'),
    
    helpText('For the model "neighborhood", 25 random',
             'test splits of the data were performed. Using the "Random Forest"',
             'ensemble machine learning method, we generate 25 models that each "see"',
             'something different about the full cohort and thereby create',
             'a range of predictions for each patient--a neighborhood.',
             'No machine learning method is perfect;',
             'so by training multiple models on different cuts of the patient cohort',
             'you are inducing real world variability. If the range of',
             'predictions for a particular patient is tight, we have reasonable',
             'confidence that the predictions are reliable. If they are widely dispersed,',
             'this is indicative of uncertainty in the predictions.'),
    
    helpText('The features on which the models are trained include demographics, surgeon,',
             'BMI, pre-op labs, operative variables, laparoscopic vs. open, diagnosis,',
             'year of procedure, functional status, among others.'),
    
    helpText('In this web application, for each patient selected, some',
             'metadata is displayed in the upper panel while',
             'their out-of-sample predictions are plotted above a density',
             'function plot of the cumulative "landscape" of predictions for all',
             'patients across the entire neighborhood of models'),
    
    br(),
    
    h5('Web Application by:'),
    helpText('Erich S. Huang, MD, PhD') 
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel('Figure 5, Panel A',
               h4('ANOVA analysis of clinical variables and model performance'),
               plotOutput("figureA", width = '85%', height = '700px')),
      tabPanel('Figure 5, Panel B',
               h4('Foo'),
               # plotOutput("figureB", width = '85%', height = '400px'),
               br(),
               helpText('Bar.')),
      tabPanel('Figure 5, Panel C',
               h4('Foo'),
               helpText('Bar.')),
      tabPanel('Figure 5, Panel D',
               h4('Foo'),
               helpText('Bar')
      ),
      tabPanel('Figure 5, Panel E',
               h4('Foo'),
               helpText('Bar.')
      )
    )
  )
))