library(cluster)
library(purrr)

distanciaEuclidiana <- function(p, q){
  
  
}

clusters <- kmeans(df[,-1],4)
plot(df[,-1], col = clusters$cluster)

d <- function(p, q){
  
}

distMin <- function(p, q, r, s){
  
  
}

clusters <- kmeans(df[,-1],4)




#Escribir una función que reciba como input un punto (p,q) en el plano, y varios puntos (x, y)
#y determine cuál de estos es el más cercano a (p,q)
#donde la distancia se debe medir como es usual
#la función deberá devolver ese punto más cercana



#
  distancia <- function(p, q, x, y) {
    return (sqrt((p - x) ** 2 + (q - y) ** 2))
  }

radioDeCluster <- function(X, Y, centroideX, centroideY) {
  distancias <- c()
  for (i in 1:length(X)) {
    distancias[i] <- distancia(X[i], Y[i], centroideX, centroideY)
  }
  return(max(distancias))
}







#Tomar un cluster 

data <-1:10
d <- dist(data, method = "euclidean")
hc1 <- hclust(d, method = "complete" )
plot(hc1, cex = 0.6, hang = -1)