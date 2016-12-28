library(shiny)
library(datasets)
library(ggvis)
library(dplyr)
library(leaflet)

if (FALSE) library(RSQLite)

vars <- colnames(houseprice)
mock <- data.frame(v1 = c(    1,    2,    NA,   9,   NaN,   7 ),
                   v2 = c(  "a",  "b",   "c", "d",   "e",  NA ),
                   v3 = c( TRUE, TRUE, FALSE,  NA, FALSE, TRUE)) 
row.names(mock) <- c("uno", "dos", "tres", "cuatro", "cinco", "seis")



function(input, output, session) {
  #source("source2.R", local=TRUE) # 可以分工
  source('tab0.R', local=TRUE)
  source('tab1.R', local=TRUE)
  source('tab2.R', local=TRUE)
  source('tab3.R', local=TRUE)
  source('tab4.R', local=TRUE)
  
}
