setwd("C:/R programming working directory/Week 2 programming assignment/specdata")
corr<-function(directory,threshold=0){
  pollutionfiles<-list.files(path = directory,pattern =".csv",full.names = TRUE)
data_cr<-numeric()
  for(i in 1:332){
    pollutiondata<-read.csv(pollutionfiles[i])
    nobs<-sum(complete.cases(pollutiondata))
    sulfate_data<-pollutiondata[["sulfate"]]
    nitrate_data<-pollutiondata[["nitrate"]]
    if(nobs>threshold){
  data_cr<-c(data_cr,cor(sulfate_data,nitrate_data,use="pairwise.complete.obs"))
  }

else{
  data_cr<-c(data_cr,NULL)
}
    }
  data_cr
}
