academy<-read.csv(file.choose(),stringsAsFactors = F,header = T)
academy<-academy[-1]
academy

academy2<-academy[,c(1,2)]
plot(academy2)

km<-kmeans(academy2,4)
km

plot(round(km$centers),col=km$centers,pch=22,bg="dark blue", xlim = range(0:100),ylim = range(0:100))
par(new=T)
plot(academy2,col=km$cluster+1,xlim = range(0:100),ylim = range(0:100))

x<-cbind(academy,km$cluster)
x[km$cluster==3,]