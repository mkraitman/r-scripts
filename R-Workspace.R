promedio <-function(x){
  s<-0;
  l<-length(x);
  for(i in c(1,l))s<-s+i;
  return(s/l);
}
#como hacer un array
c(1,2,3,4,5,6,7)

#como hacer una matriz
m <- matrix(c(1,2,3,4,5,6), ncol=2, nrow=3)

#traer la primer fila
m[1,]

#traer la primer columna
m[,1]

#seq es como hacer un for 
seq(2, 100, 7777)

#seq + 1000
m <- seq(2, 100, 7777) + 1000

#declarar una funcion por ejemplo una suma:
suma <- function(x){
  n<- length(x)
  s <- 0
  for(i in (1:n)){
    s <- s+x[i]
  }
  return(s)
}

#suma de n a n
suma(1:1000)

#promedio:
promedio <- function(x){
  s<-0
  l<-length(x)
  for(i in x)
    s<-s+i
  return(s/l)
}

#varianza 1
varianza1 <-function(x){
  s<-0
  p<-promedio(x)
  for(i in x){
    s <- s+(x[i]-p)**2
  }
  return(s/length(x))
}

#varianza 2
varianza2 <- function(x){
  s<-0
  for(i in x){ 
    s <- s+(i**2)
  }
  return(s/length(x) - promedio(x)**2)
}

#varianza 3 (TAREA)
varianza3 <- function(x){
  
}

#Fibonacci
fibonacci <- function(c){

a<-0
b<-1
print(a)
arr<-c(a)
  for(i in 0:c){
    c <- b + a
    a <- b
    b <- c
    print(a)
    arr<-c(a)
  }
  print(arr)
  return(arr)
}

