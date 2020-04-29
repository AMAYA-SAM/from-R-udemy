?legend()
matplot(t(FieldGoals),type = "b",pch=15:18,col=c(1:4,6))
legend("bottom left",inset=0.01,legend=Players,col=c(1:4,6),pch=15:18,horiz=5)