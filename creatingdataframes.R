mydf<-data.frame(Countries_2012_Dataset,Codes_2012_Dataset,
                 Regions_2012_Dataset)
#colnames(mydf)<-c("Country","Code","Regions")
mydf
rm(mydf)
#NAMING DATAFRAME
mydf<-data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset,
                 Regions=Regions_2012_Dataset)
head(mydf)
summary(mydf)
