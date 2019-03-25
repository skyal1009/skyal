c<-c(3,4,1,5,7,9,5,4,6,8,4,5,9,8,7,8,6,7,2,1)
row<-c("a","b","c","d","e","f","g","h","i","j")
col<-c("x","y")
data<-matrix(c,nrow=10,ncol=2,byrow=TRUE,dimnames = list(row,col))
data
plot(data)

km<-kmeans(data,2)
km$cluster
cbind(data,km$cluster)

km$centers

plot(round(km$centers),col=km$centers,pch=22,bg="dark blue", xlim=range(0:10),ylim=range(0:10))
par(new=T)

plot(data,col=km$centers+1,xlim=range(0:10),ylim = range(0:10))

