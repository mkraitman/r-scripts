library(cluster)
library(purrr)
library(ggplot2)



dataset <- read.csv("C:/Users/Martin Kraitman/git/r-scripts/archivos-csv/clientes.csv")
#------CLUSTERING------

#Agrupamiento de objetos teniendo en cuenta las "distancias" entre ellos segun sus caracteristicas.
#El objetivo es encontrar "Clusters" con algun algoritmo.

#CLUSTERS:

#Aplico K-Means al dataset
#K = 4
clusters <- kmeans(dataset[,-1],3)


plot(dataset[,-1], col = clusters$cluster)

#Separar clusters
cluster1 <- dataset[clusters$cluster==1,]
cluster2 <- dataset[clusters$cluster==2,]
cluster3 <- dataset[clusters$cluster==3,]


plot(dataset[,-1], col = cluster1)

#Buscar distancia entre dos puntos
dist <- function(p, q, x, y) {
  return (sqrt((p - x) ** 2 + (q - y) ** 2))
}





#CLUSTERS + CENTROIDES
points(clusters$centers, col = 4:6, pch = 4, cex = 2)

#---DISTANCIA---:

#Escribiendo el algoritmo completo:
dist <- function(p, q, x, y) {
  return (sqrt((p - x) ** 2 + (q - y) ** 2))
}

#---CENTROIDES---
#graficar los puntos por cluster


#Punto equidistante de los objetos pertenecientes a dicho cluster
points(clusters$centers, col = 4:6, pch = 4, cex = 2)



#---RADIO DE CLUESTER---
radio <- function(X, Y, centroideX, centroideY) {
  distancias <- c()
  for (i in 1:length(X)) {
    dist[i] <- dist(X[i], Y[i], centroideX, centroideY)
  }
  return(max(distancias))
}

#---DIAMETRO---
#Distancia máxima entre dos sujetos pertenecientes




#CODO:

set.seed(1234)
wcss <- vector()
for(i in 1:20){
  wcss[i] <- sum(kmeans(dataset, i)$withinss)
}







