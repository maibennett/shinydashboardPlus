% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/useful-items.R
\name{productList}
\alias{productList}
\title{AdminLTE2 product list container}
\usage{
productList(...)
}
\arguments{
\item{...}{slot for productListItem.}
}
\description{
Create a container product list elements
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinydashboard)
 shinyApp(
  ui = dashboardPage(
    dashboardHeader(),
    dashboardSidebar(),
    dashboardBody(
     box(
      title = "Product List",
      status = "primary",
      productList(
        productListItem(
          src = "https://www.pngmart.com/files/1/Haier-TV-PNG.png", 
          productTitle = "Samsung TV", 
          productPrice = "$1800", 
          priceColor = "warning",
          "This is an amazing TV, but I don't like TV!"
        ),
        productListItem(
          src = "https://upload.wikimedia.org/wikipedia/commons/7/77/IMac_Pro.svg", 
          productTitle = "Imac 27", 
          productPrice = "$4999", 
          priceColor = "danger",
          "This is were I spend most of my time!"
        )
      )
     )
    ),
    title = "Product List"
  ),
  server = function(input, output) { }
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
