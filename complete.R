
setwd("C:/R programming working directory/Week 2 programming assignment/specdata")
complete<-function(directory,id=1:332){
  pollutionfiles<-list.files(path = directory,pattern =".csv",full.names = TRUE)
  nobs<-numeric(0)
  for(i in id){
pollution_data<-read.csv(pollutionfiles[i])
nobs<-c(nobs,sum(complete.cases(pollution_data)))
  }
  data.frame(id,nobs)
  }
