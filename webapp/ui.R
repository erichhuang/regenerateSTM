## Shiny UI side

## REQUIRE
require(shiny)

## CLIENT SIDE UI
shinyUI(pageWithSidebar(
  # Application Title
  headerPanel('Demonstration of an "FRDS-Powered App"'),
  
  # Sidebar with controls to select a patient
  sidebarPanel(
    actionButton(inputId = 'runCode', label = 'Run Code'),
    br(),
    h5('Explanation'),
    helpText('Taking Figure 5 from the Science Translational Medicine Paper,',
             'here we are now showing how one could use a FRDS API to create',
             'an "App". Using webservices, one is pulling Provenance, Data, and',
             'Code and creating a user-friendly web application to use the FRDS',
             'APIs to execute an analysis and generate figures'),
    br(),
    helpText('So just as Apple making the iOS SDK available to developers spawned',
             'millions of iPhone and iPad applications, the FRDS APIs will facilitate',
             'applications for research data that are only limited by investigators',
             'creativity'),
    
    h5('Web Application by:'),
    helpText('Erich S. Huang, MD, PhD'),
    helpText('Division of Translational Bioinformatics'),
    helpText('Department of Biostatistics & Bioinformatics')
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel('Figure 5, Panel A',
               h4('ANOVA analysis of clinical variables and model performance'),
               helpText('Percentage of Concordance Index variance explained by each clinical variable.'),
               plotOutput("figureA", width = '85%', height = '500px')),
      
      tabPanel('Figure 5, Panel B',
               h4('Prognostic model performance and histologic grade'),
               helpText('Concordance Indices were calculated for OsloVal models according to subsets of patients by histological grade.'),
               plotOutput("figureB", width = '85%', height = '500px')),
      
      tabPanel('Figure 5, Panel C',
               h4('Prognostic model performance and lymph node status'),
               helpText('Concordance Indicies were calculated for OsloVal models according to subsets of patients by LN status.'),
               plotOutput("figureC", width = '85%', height = '500px')),
      
      tabPanel('Figure 5, Panel D',
               h4('Prognostic model performance and follow-up time'),
               helpText('Concordance Indices were calculated for OsloVal models according to subsets of patients by follow-up time (OS)'),
               plotOutput("figureD", width = '85%', height = '500px')),
      
      tabPanel('Figure 5, Panel E',
               h4('Prognostic model performance and clinical characteristics'),
               helpText('CIs were calculated for OsloVal models according to subsets of patients by age, ER status, and HER2 status. Patients were divided into subsets according to each of the above clinical characteristics. Individual model predictions were generated for patients belonging to each subset, and the CI was calculated by comparison with the actual survival for each patient.'),
               plotOutput("figureE", width = '85%', height = '500px'))
    )
  )
)
)