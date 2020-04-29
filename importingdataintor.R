#to load a data from a choosen folder
stats<-read.csv(file.choose())
stats
#to know working directroy
getwd()
#to set working direcory
setwd("C:\\Users\\amaya\\Desktop\\R")
getwd()
rm(stats)
stats<-read.csv("DemographicData.csv")
stats