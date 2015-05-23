library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Developing Data Products Project"),
  
  sidebarPanel(
    h5("Eladio Montero Porras. 2015"),
    numericInput('text1', 'Number of Courses of the Specialization', 0, min = 0, max = 10, step = 1),
    numericInput('text2', 'Avg Hours per Week Spent', 0, min = 0, max = 10, step = 1),
    dateInput("date", "Date:")

  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Dashboard",
        p('Your hours spent on Coursera are:'),
       textOutput('text1'),
       p('Today is:'),
       verbatimTextOutput("today"),
       p('Your Birthday is:'),
       textOutput('date'),
       textOutput("dayslived"),
       textOutput("hourslived"),
       textOutput("minslived"),
       textOutput("secslived")),
      tabPanel("Documentation",
        h1("Documentation"),
        p("This is the final project for the course Developing Data Products."),
        p("For this appliaction, we are going to calculate how much you spent on Coursera on average."),
        p("First, enter how much courses have you taken, then, enter how many hours you dedicate to Coursera."),
        p("The second part of the project is calculate how much days, hours, minutes and seconds you lived since your birthday. So, in the field 'Date', enter your Birthday."),
        
        h2("Explanation"),
        p("First Part:"),
        p("Since all the courses in the Specialization take on average 4 weeks to complete, the calculation is just the courses times the hours spent times 4. So this gives you how many hours have you spent on this site learning."),
        p("Second Part:"),
        p("With the function datediff, I can calculate in terms of units (days, hours, minutes or seconds) how much has passed since a specified date. It is impressive how much seconds I've lived!")
        
        
        )
      )
    
  )
))