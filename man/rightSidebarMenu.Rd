% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rightSidebar.R
\name{rightSidebarMenu}
\alias{rightSidebarMenu}
\title{AdminLTE2 right sidebar menu}
\usage{
rightSidebarMenu(...)
}
\arguments{
\item{...}{Slot for rightsidebarMenuItem.}
}
\description{
Create a nice right sidebar menu.
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinydashboard)
 shinyApp(
   ui = dashboardPagePlus(
     header = dashboardHeaderPlus(
       enable_rightsidebar = TRUE,
       rightSidebarIcon = "gears"
     ),
     sidebar = dashboardSidebar(),
     body = dashboardBody(),
     rightsidebar = rightSidebar(
       background = "dark",
       rightSidebarTabContent(
         id = 1,
         icon = "desktop",
         title = "Tab 1",
         active = TRUE,
         rightSidebarMenu(
          rightSidebarMenuItem(
           icon = menuIcon(
            name = "birthday-cake",
            color = "red"
           ),
           info = menuInfo(
            title = "Langdon's Birthday",
            description = "Will be 23 on April 24th"
           )
          ),
          rightSidebarMenuItem(
           icon = menuIcon(
            name = "user",
            color = "yellow"
           ),
           info = menuInfo(
            title = "Frodo Updated His Profile",
            description = "New phone +1(800)555-1234"
           )
          )
         )
       ),
       rightSidebarTabContent(
         id = 2,
         title = "Tab 2",
         textInput("caption", "Caption", "Data Summary")
       ),
       rightSidebarTabContent(
         id = 3,
         icon = "paint-brush",
         title = "Tab 3",
         numericInput("obs", "Observations:", 10, min = 1, max = 100)
       )
     ),
     title = "Right Sidebar"
   ),
   server = function(input, output) { }
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
