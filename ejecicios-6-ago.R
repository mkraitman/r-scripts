# Ejemplos en R para que experimenten con vectores

# Con seq se puede especificar una secuencia entera dando el inicio, el fin y el paso (parámetro by o 3º parámetro):
x <- seq(-5, 5, by=.2)

# asigna a x el vector c(-5.0, -4.8, -4.6, ..., 4.6, 4.8, 5.0).
# es otra manera, indicando el largo, desde y paso
x2 <- seq(length=51, from=-5, by=.2)

# c() se usa tanto para construir vectores como para concatenarlos; vean un ejemplo
print(c(c(3,4),c(c(5),6),3))

# Si la secuencia es de a 1 (ascendente o descendente), se puede usar la función :, del siguiente modo
# a : b, devuelve un vector con los números entre a y b inclusive

# Vean lo que se imprime estos ejemplos:
print(1:10)
print(2:3)
print(2:2)
print(2:1)
print(-10:1)
print(c(c(-5:-1),c(1:5)))

x <- rep(x, times=5)
print(x)

# repite el vector x 5 veces
x <- rep(x, each=5)

# R permite extender a todo un vector una operación sobre elementos, ejemplo:
print(x + 1)

# En cambio, vector + vector suma los vectores del modo usual, componente a componente
# Lo mismo con -, *, /, aplicará esa operación componente a componente
print(x+x)

# ----------- \\\EJERCICIOS =>

# Ejercicio 1: escribir una sentencia muy corta, de no más de 18 caracteres, que devuelva el vector 1,4,9,16,25,...,10000 de todos los cuadrados de los naturales del 1 al 100
ejr1<- function() {
 return((1:100) **2)
}

# Ejercicio 2: escribir una sentencia muy corta, de no más de 25 caracteres, que devuelva el vector de todos los cuadrados de los naturales 1,3,5,...,99 es decir de los naturales impares del 1 al 100
ejr2 <- function(){
  return(seq(1, 100, by=2))
}
# En cambio, si necesitaran multiplicar vectores por matrices o matrices por matrices, hay funciones para eso también (ya lo veremos)

# Recordar que las funciones <, >, =, etc. devuelven un booleano; por ej., al evaluar exp < 0 devolverá TRUE o FALSE, según el valor de la expresión exp
print(x < 0)
# imprime un vector de booleanos, según sean < 0 o no los elementos de x, es decir es el resultado de extender la operación a todos los elementos

# R permite indexar un vector con un vector de booleanos, indicando los elementos a procesar o devolver; vean este ejemplo:
x[c(TRUE, TRUE, FALSE, TRUE)] <- 100

# Piensen qué imprimen estos ejemplos, antes de probarlas:
print(c("a","b","c","d","r")[c(1,2,5,1,3,1,4,1,2,5,1)])
print(c("x","y")[rep(c(1,2,2,1), times=4)])
#c("a","b","c","d","r") y c("x","y") son arrays de caracteres y c es la posicion en la que se encuentran
#por lo tanto entre los [] informamos como imprimir los strings

# La función factor convierte vector a elementos simbólicos al estilo de los enumerados, ahorrando espacio y mejorando la lectura (además se definen niveles)
print(factor(c("a","b","c","d","r")[c(1,2,5,1,3,1,4,1,2,5,1)]))

# La función abs() que devuelve el valor absoluto (módulo) de un número real. Se puede lograr su efecto también del siguiente modo, si necesitáramos modificar los elementos de un vector por sus valores absolutos:
x[x < 0] <- -x[x < 0]

# es decir, el vector x, para los elementos en que se cumpla la condición x < 0, deja los mismos elementos pero cambiados de signo, y al resto no lo cambia

# Piensen, antes de probarlas, qué efecto tiene cada una de las siguientes expresiones sobre x (o si dan error por asignar un vector de tamaño inadecuado):
x <- x[x < 0] <- x[x < 0] #todos los negativos 
x <- x[x <= 0] <- -x[x <= 0] #todos modulos de los negativos y 0
x <- x[x > 0] <- -x[x > 0] #todos de los positivos - n*2
x <- x[x = 0] <- -x[x = 0] #NOSE
x <- x[x > 0] <- (2*x)[x > 0] #todos los positivos * 2

# Ejercicios sobre un vector x:

# Asignarle al vector y los elementos de x mayores que 0 (los otros no deben aparecer)
vec1 <- function(arr) {
  arr <- arr[arr > 0]
  return(arr)
}
# Asignarle al vector y los inversos (es decir 1/x) de los elementos de x que no sean 0 (evitando así el error de división por 0)
vec2 <- function(arr){
  arr <- arr[arr != 0]
  arr <- 1 / arr
  return(arr)
}

# Asignarle al vector y todos los elementos de x multiplicados por 3
vec3 <- function(arr){
 arr <- arr * 3
  return(arr)
}

# Asignarle al vector y los elementos de x que son > 0 seguidos de los elementos de x que son < 0. Es decir, primero los positivos y a continuación los negativos. Ejemplo: si x = 1 -1 4 0 -2 3, deberá resultar y = 1 4 3 -1 -2.
vec4 <- function(arr){
arr <- c((arr[arr > 0]),(arr[arr < 0]))
    return (arr)
}

# Producto externo

# El operador %o% permite obtener el producto de todos los elementos con todos ellos, devolviendo una matriz (o arreglo de dimensión mayor que el original); por ej:
x <- 1:10 %o% 1:10

#A ver si logran, con este método (y algo más) mediante una sola sentencia de print, obtener la tabla con el doble de todos los anteriores, es decir:
x <- (1:10 %o% 1:10) * 2

#Y luego a ver si pueden convertir todo a un solo vector:
s <- 0
arr <- c()
print(sqrt(length(x)))
for(a in s:sqrt(length(x))){
  arr <- c(arr,x[,a])  
}
x <- arr

#Se puede usar la función summary(x) para obtener una impresión amigable de ciertos datos estadísticos
# EJ: Min. 1st Qu.  Median    Mean 3rd Qu.    Max.


x <- 1:4
y <- outer(x,x) # es lo mismo que y <- x %o% x
print(y)

# La función table devuelve una tabla por frecuencias, es decir cada elemento cuántas veces aparece
# prueben utilizar table para vectores varios...

z <- table(y)
print(z)










