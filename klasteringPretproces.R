library(NbClust)
library(ggplot2)
library(factoextra) 

podaci <- na.omit(CC.GENERAL)
podaci.final <- podaci[-1]
podaci.skalirani <- scale(podaci.final)
clust.tend <- get_clust_tendency(podaci.skalirani,n = 50,seed = 123)
clustend <- get_clust_tendency(podaci.skalirani, 100)

broj.klastera <- NbClust(podaci.skalirani,distance = "euclidean",min.nc = 2, max.nc = 15,method = "complete",index = "all")

klaster <- kmeans(podaci[-1],5,10)
