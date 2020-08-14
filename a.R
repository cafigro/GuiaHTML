
rm(list=ls())
setwd("~/Universidad/Big Data/Tarea 3")
library(xml2)
library(rvest)
readHtml <-read_html("Tarea3.html")
nodeNoticia <- html_nodes(readHtml, "p")
texto<-html_text(nodeNoticia)
texto<-strsplit(tolower(texto)," ")[[1]]
texto<-gsub("'","",texto)
texto<-gsub(":","",texto)
texto<-gsub(",","",texto)
rep<-0
Repeticiones<-c()
palabra<-c()
for (Uno in 1:length(texto)){
  for(Dos in 1:length(texto)){
    if(texto[[Uno]]==texto[[Dos]]){
      rep<-rep+1

    }else{
      NULL
    }
    
  }
  Repeticiones<-c(Repeticiones,rep)
  palabra<-c(palabra,texto[[Uno]])
  rep<-0
}
DatosOrdenados<-data.frame(palabra,Repeticiones)
DatosUnicos<-unique(DatosOrdenados)
print(DatosUnicos)
