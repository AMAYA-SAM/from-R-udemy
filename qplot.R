library(ggplot2)
?qplot
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Internet.users,y=Birth.rate)
qplot(data=stats,x=Internet.users,y=Birth.rate,geom = "boxplot")
qplot(data=stats,x=Internet.users,y=Birth.rate,
      colour=I("red"),size=I(5))
#its important to write I() since otherwise it wont take it as
