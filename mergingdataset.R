head(stats)
head(mydf)
#to merge data we take the data sets and by x and y means common coloumn
merged<-merge(stats,mydf,by.x="Country.Code",by.y="Code")
head(merged)
qplot(data=merged,Internet.users,Birth.rate,
      colour=Regions)
merged$Country=NULL
str(merged)
#to change shape of plot
qplot(data=merged,Internet.users,Birth.rate,shape=I(17),size=I(2),
      colour=Regions)
#transparency there can be overlaping data so for distinguishing we use apha
qplot(data=merged,Internet.users,Birth.rate,shape=I(17),size=I(2),
      colour=Regions,alpha=I(0.2))
#alpha varies from 0 to 1,1 is opaque
#for title we use main
qplot(data=merged,Internet.users,Birth.rate,shape=I(17),size=I(2),
      colour=Regions,alpha=I(0.2),main="CHART")
