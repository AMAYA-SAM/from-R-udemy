head(stats)
filter<-stats$Internet.users<2
filter
#we got a true false vector and to print the true event details
stats[filter,]
stats[stats$Birth.rate>40,]
stats[stats$Birth.rate>40 & stats$Internet.users<2,]
stats[stats$Income.Group=="Low income"]
stats[117,]
stats[stats$Country.Name=="Malta",]