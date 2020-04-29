x<-MinutesPlayed[1,drop=F]
matplot(t(x),type = "b",pch=15:18,col=c(1:4,6))
legend("bottom",inset=0.01,legend=Players[1],col=c(1:4,6),pch=15:18,horiz=5)
x