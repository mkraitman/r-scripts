#funcion que suma todos los elementos
suma <- function(x){
  s <- 0
  for(e in x){
    s <- s+e
  }
  return(s)
}

#norma: ...
norma <- function(x){
  y<- suma(x*x)
  return(sqrt(y))
}

#producto escalar (el tamaño de los dos vectores debe ser igual!)
productoEscalar <- function(x, y){
  prd <- 0
  for (i in x) {
    prd = prd + i * x
  }
  return(prd)
}

#producto escalar de una matriz
productoEscalarMatrix <- function(m1, m2){
  #tarea
}

#indexar vectores por posicion
index <- function(){
  
}


#valor absoluto -3 = 3 & 3 = 3
valorAbsoluto <- function(x){
  if(x>=0){
    return(x)
  }else{
    return(-x)
  }
}

#valorAbsoluto(x) o en la funcion abs(x) tambien se pueden pasar vectores
abs(c((1:10), (-20:-10)))

#min & max (asociativas)
min(c(1,10,-2,102,101,3)) #-2
max(c(1,10,-2,102,101,3)) #102

#mean = promedio
mean(c(29,2,3))

#el resultado entre min/max alterando el orden es siempre el mismo, no pasa lo mismo si sacamos un promedio
mean(a,mean(b,c)) != mean(b, mean(a,c))
min(a(b,c)) == min(b(c(a,c)))

#---
#quintil 0% 25% 50% 75% 100%
quantile(x)

#si quiero un quantil distinto por ejemplo un percentil
quantile(x,prob=seq(0,1,.01)) #explicacion incompleta...

#si quiero un quantil distinto por ejemplo un bicentil
quantile(x,prob=.3)

#summary(x)

#que es IQR? es el rango entre quantiles

#definir una funcion que tome una matriz y calcule el promedio por fila : return vec
vecPromedioColumna <- function(m){
  res <- c()
  for(i in 1:length(m[1,])){
   res <- c(res,mean(m[,i]))
  }
   return(res)
}

#definir una funcion que toma una matriz y calcule el promedio por columna : return vec
vecPromedioFila<- function(m){
  res <- c()
  for(i in 1:length(m[,1])){
    res <- c(res,mean(m[i,]))
  }
  return(res)
}

#con una traspuesta t(x) lo solucionamos con menos codigo
vecPromedioFilaTr<- function(m){
  return(vecPromedioColumna(t(m)))
}

#Ejercicio "interesante" calcular el producto de matrices...


