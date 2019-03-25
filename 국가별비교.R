x <- read.csv(file.choose(), header=TRUE, row.names=1)
head(x, n=10)
x
x1<-x[c(1,4)]
km <- kmeans(x1, 3)
km
plot(round(km$centers),col=km$centers, pch=22,bg="dark blue")
plot(round(x1), col = km$cluster)
x1<-cbind(x1,km$cluster)
x1
x1[km$cluster==3,]