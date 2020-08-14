rm(list=ls())
setwd("~/Universidad/Big Data/Tarea 3")
library(xml2)
library(rvest)
readHtml <-read_html("Tarea3.html")
tablaLeida <- html_table(readHtml)
print(tablaLeida)
precios<-tablaLeida[[1]][2]
print(precios[[1]][1])
print(length(precios[[1]]))
suma<-0
for(i in 1:length(precios[[1]])){
  
  suma<-suma+precios[[1]][i]
  
}
promedio<-suma/i
                      
mediana<-precios[[1]][i/2]      
print(paste("el promedio de los valores de los productos es", promedio, "y su mediana es ", mediana))
