library(factoextra)
library(cluster) 




k=read.csv('C:/Users/jaswa/.ipython/FINAL.AIT.csv')
k


k_scale=k[4:5]

k_scale


k_dist=dist(k_scale)
k_dist


fviz_nbclust(k_scale,kmeans,method="wss")+labs(subtitle="number of clusters")

# kmean

k_m=kmeans(k_scale,center=3,nstart=2)

print(k_m)

#visualization
km.cluster = k_m$cluster
#rownames(k_scale)=paste(k,1:dim(k)[1],sep="")
fviz_cluster(list(data=k_scale,cluster=km.cluster))

