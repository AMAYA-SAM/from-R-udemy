s<-ggplot(data=movies,aes(x=Budgetmillions))
s+geom_histogram(binwidth = 12)
s+geom_histogram(binwidth = 12,aes(fill=Genre))
s+geom_histogram(binwidth = 12,fill="Dark Green")
s+geom_histogram(binwidth = 12,aes(fill=Genre),colour="Black")
s+geom_density(aes(fill=Genre),position="stack")
t<-ggplot(data =movies,aes(x=Audiencerating))
t+geom_histogram(colour="Blue",fill="White",binwidth = 10)
u<-ggplot(data=movies,aes(x=Criticrating,y=Audiencerating,colour=Genre))
u+geom_point()+geom_smooth(fill=NA)
#BOXPLOT
u<-ggplot(data=movies,aes(x=Genre,y=Audiencerating,colour=Genre))
u+geom_boxplot()
u+geom_boxplot(size=1.2)
u+geom_boxplot(size=1.2)+geom_point()
u+geom_boxplot(size=1.2)+geom_point()+geom_jitter()
u+geom_boxplot(size=1.2,alpha =0.2)+geom_jitter()
u+geom_jitter()+geom_boxplot(size=0.2,alpha =0.2)
u<-ggplot(data=movies,aes(x=Genre,y=Criticrating,colour=Genre))+ylab("blah-")
u+geom_jitter()+geom_boxplot(size=0.2,alpha =0.2)


#__-______-______________-_______FACETS
q<-ggplot(data=movies,aes(x=Budgetmilions))
q+geom_histogram(binwidth=10,aes(fill=Genre),colour="Black")+
  facet_grid(Genre~.,scales="free")
r<-ggplot(data=movies,aes(x=Criticrating,y=Audiencerating,colour=Genre))
r+geom_point(size=3)
r+geom_point(size=3)+facet_grid(Genre~.)
r+geom_point(size=3)+facet_grid(.~year)
r+geom_point(size=3)+facet_grid(Genre~year)
r+geom_point(size=3)+geom_smooth()+facet_grid(Genre~year)
o<-ggplot(data=movies,aes(x=Criticrating,y=Audiencerating,size=Budgetmillions,colour=Genre))
o+geom_point()
o+geom_point()+xlim(50,100)+ylim
o+geom_histogram(binwidth=10,aes(fill=Genre),colour="Black")
o+geom_histogram(binwidth=10,aes(fill=Genre),colour="Black")+
  coord_cartesian(ylim=c(0,50))
r+geom_point(size=3)+geom_smooth()+facet_grid(Genre~year)+
  coord_cartesian(c(0,100))





q<-ggplot(data=movies,aes(x=Budgetmillions))
q+geom_histogram(binwidth=10,aes(fill=Genre),colour="Black")+
  xlab("Money axis")+ylab("Number of movies")+
  theme(axis.title.x = element_text(colour="Dark Green",size=30))+
  theme(axis.title.y = element_text(colour="Red",size=30))+
  theme(axis.text.x = element_text(colour="Dark Green",size=10))+
  theme(axis.text.y = element_text(colour="Red",size=10))+
  theme(legend.title= element_text(colour="Dark Green",size=30))+
  theme(legend.text = element_text(colour="Red",size=30))+
  theme(legend.position=c(1,1))+theme(legend.justification = c(1,1))+ggtitle("MOVIE DISTRIBUTION")+
  theme(plot.title=element_text(colour="Dark Blue"),size=20,family="Courier"))
  

