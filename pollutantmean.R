
setwd("E:/R/specdata")
pollutantmean<-function(specdata,compound,id){
  pollutionfiles<-list.files("E:/R/specdata")[id]
  pollutantdata<-lapply(pollutionfiles,function(x)read.csv(x)[[compound]])
  pollutantstat<-unlist(pollutantdata)
  mean(pollutantstat,na.rm = TRUE)
}
