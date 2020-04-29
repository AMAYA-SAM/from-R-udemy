#we can create objects with ggplot
p<-ggplot(data=movies,aes(x=Criticrating,y=Audiencerating,colour=Genre,
                          size=Budgetmillions))
p
#to add geom then add with object
p+geom_point()
p+geom_line()
p+geom_line()+geom_point()
p+geom_point()+geom_line()
#layer abv layer
#functn over riding
w<-ggplot(data=movies,aes(x=Criticrating,y=Audiencerating,colour=Genre,
                          size=Budgetmillions))

w+geom_point()
#to varie aesthetics we can over ride

w+geom_point(aes(size=Criticrating,colour=Budgetmillions,x=Genre))

#x was made genre but axis name hasnt been changed so
w+geom_point(aes(size=Criticrating,colour=Budgetmillions,x=Genre))+
  xlab("Genre***")
w+geom_point(aes(x=Budgetmillions))+xlab("Budget$$/-")

w+geom_point(colour="DarkGreen")#setting
movies$Genre
# wrong-since we didnt use aesthetics-w+geom_point(colour=movies$Genre)
w+geom_point(aes(colour=Genre))#mapping