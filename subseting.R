#subsetting is the process of deriving from a main matrix
Games
Games[1,2]
Games[1:4,2:5]
#R takes the below statement as a vector
x<-Games[1,1:5]
is.vector(x)
is.matrix(x)
x<-Games[1,1:5,drop=F]
is.vector(x)
is.matrix(x)
