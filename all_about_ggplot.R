movies<-read.csv(file.choose())
head(movies)

colnames(movies)<-c("Film","Genre","Criticrating",
                    "Audiencerating","Budgetmillions",
                    "year")
head(movies)
str(movies)
#factors are number of variable
summary(movies)
#now year is a numeric variable we gotta make it a factor only then
#we will be able to classify as this many movies in a yr
movies$year<-factor(movies$year)

summary(movies)
#_______________________________________aesthetics
library(ggplot2)
ggplot(data=movies,aes(x=Criticrating,y=Audiencerating))

#we have to mention kind of geometry we want
ggplot(data=movies,aes(x=Criticrating,y=Audiencerating))+geom_point()

ggplot(data=movies,aes(x=Criticrating,y=Audiencerating,
                       colour=Genre))+geom_point()

ggplot(data=movies,aes(x=Criticrating,y=Audiencerating,
                       colour=Genre,size=Genre))+geom_point()
ggplot(data=movies,aes(x=Criticrating,y=Audiencerating,
                       colour=Genre,size=Budgetmillions))+geom_point()
