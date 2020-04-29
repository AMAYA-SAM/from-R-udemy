stats<-read.csv(file.choose())
stats
nrow(stats)
ncol(stats)
#top for rows
head(stats,n=4)
tail(stats,n=4)
#str is for status ..stands for structure ..gives iverall ssummary
str(stats)
#likr rnorm just that this is uniform distribution
runif(5)
#summary
summary(stats)
#-----------------------------------------------
stats
stats[3,3]
stats[3,"Birth.rate"]
#to acces a particular row or coloumn we also use $
stats$Birth.rate[3]
#so we got birth rate of third row
levels(stats$Income.Group)
#gives different ncome levels
#________________operations onn data frames
stats[1:10,]
is.data.frame(stats)
stats[c(1:4)]
is.data.frame(stats[1,])
is.data.frame(stats[,1])
#in case of a single colomun and all rows it is no more a data frame
head(stats)
stats$Birth.rate*stats$Internet.users
#add a coloumn
stats$new_col<-stats$Birth.rate*stats$Internet.users

stats
stats$xys<-1:5
stats
#to remove a coloumn assign null
stats$xys<-NULL
stats$new_col<-NULL