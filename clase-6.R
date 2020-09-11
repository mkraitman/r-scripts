data(iris)

str(iris)
#Valores estadisticos basicos
summary(iris)

#Muestra los campos y los valores
head(iris)

#Para mesclarlo
#columa 1
iris[1,]
#columa 2
iris[2,]
#columa 3
iris[3,]
#columa 4
iris[4,]
#columa 5
iris[5,]

#random genereitor
runif(30)

#order - me devuelve en que orden vienen los elementos
order(c(5,6,1,2))
order(c("d","a","b","c"))

#si hay repetidos se queda con el primer valor repetido que aparece
order(c(10,2,10,3))

#como "abarajar esto"
#150 numeros aleatorios <- asi
order(runif(150))

iris_random <- iris[order(runif(150)),]

#cuantas maneras de orden pueden haber en una coleccion? FACTORIAL
factorial(10)

#Normalizar una tabla el 0 es el primer valor y el 1 es el ultimo
summary(iris)
normal <- function(x){
  return ((x-min(x)) / (max(x) - min(x)))
}

#Rango -> Tengo un vector
v<-(100:319)
range(v)
diff(range(v))
max(v)-min(v)


train <- iris_new[rango,]
test <- iris_new[-rango,]

train



install.packages("class")
library(class)

model <- knn(train = train, test = test, cl = train_sp, k=13)


install.packages("gmodels")
require(gmodels)
CrossTable(x=model, y=test_sp, chisq=FALSE)

#ejercicio 1 crear una funcion "normalizar"
normal <- function(x){
  return ((x-min(x)) / (max(x) - min(x)))
}

#ejercicio 2 sumar la diagonal de principar de una matriz
m <- matrix(1:12, nrow = 10, ncol = 12)
sumarDiagonal <- function(m){
  acum <- 0
  for (i in 1:length(m[,1])) {
    acum <- acum + m[i,i] 
  }
  return(acum)
}

#ejercicio 3 aplicar knn usando como entrenamiento, las filas impares y como testing las filas pares
iris_new <- as.data.frame(lapply(iris_random[,-5],normal))
rango <- 1:130
train <- iris_new[,m]
test <- iris_new[-rango,]

train_sp <- iris_random[1:130,5]
test_sp <- iris_random[131:150,5]

model <- knn(train = train, test = test, cl = train_sp, k=13)

test
train

#ejercicio 4 aplicar knn usando como entrenamiento el 70% de las filas
#desde la primera, y como testing el resto de las filasa
#no ustilizar constantes para el nro de filas


#Calcular taza de acierto o presision, obtener todos los aciertos obtener un calculo devolver una fraccion o porcentaje
#la suma de la diagonal es lo que vamos a comparar











##################################### lo escrito por Ariel
install.packages("gmodels")
install.packages("class")

data(iris)
str(iris)
summary(iris)

head(iris)

iris_random <- iris[order(runif(150)),]

head(iris_random)

normal <- function(x){
  return ((x- min(x)) / (max(x) - min(x)) )
}

#ejercicio muy simple:
#normalizar de 0 a 100

iris_new <- as.data.frame(lapply(iris_random[,-5],normal))

summary(iris_new)

#Ahora creemos conjuntos de datos de entrenamiento y prueba.
#El conjunto de datos de entrenamiento es sobre el que construiremos nuestro modelo.
#Pondremos a prueba nuestro modelo en el conjunto de datos de prueba.
#Tomemos 20 de las 150 observaciones para la prueba y el resto como conjunto de datos de entrenamiento.
rango <- 1:130
train <- iris_new[rango,]
test <- iris_new[-rango,]

train_sp <- iris_random[1:130,5]
test_sp <- iris_random[131:150,5]

















