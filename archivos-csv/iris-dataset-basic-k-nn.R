data(iris)
str(iris)
summary(iris)

#Los datos del iris están cargados. Podemos ver el resumen de que tiene 150 observaciones de 5 variables
#de tres especies de la planta.

#A partir de los datos, se puede ver que las observaciones se dan ordenados por especie.

#Para aleatorizar el conjunto de datos del iris, usemos la función runif. Crea una distribución uniforme de 150 nos. 
#Y podemos usar su orden como un rango para nuestro conjunto de datos para mezclarlo

head(iris)
set.seed(1234)

head(iris)

random <- runif(150)
iris_random <- iris[order(random),]

head(iris_random)

"Los primeros datos son la cabecera de los datos originales del iris. Podemos ver que nuestros datos
son aleatorios en la segunda tabla del nuevo conjunto de datos ('iris_random'), que creamos.
Procedamos a normalizar las variables numéricas del conjunto de datos. La normalización de los valores numéricos
es realmente efectiva para los algoritmos, ya que proporciona una medida de 0 a 1 que corresponde al valor mínimo
al valor máximo de la columna de datos.

Definimos una función 'normal' que normalizará el conjunto de valores de acuerdo con su valor mínimo y su valor máximo.

Vamos a crear un nuevo conjunto de datos iris_new aplicando la función."

normal <- function(x) (
  return( ((x - min(x)) /(max(x)-min(x))) )
)
normal(1:5)
iris_new <- as.data.frame(lapply(iris_random[,-5], normal))
summary(iris_new)

"Ahora creemos conjuntos de datos de prueba y entrenamiento.

El conjunto de datos de entrenamiento es sobre el que construiremos nuestro modelo.
Pondremos a prueba nuestro modelo en el conjunto de datos de prueba.
Tomemos 20 de las 150 observaciones para la prueba y el resto como conjunto de datos de entrenamiento.

Tomemos la  columna correspondiente a las especies 
para usar en el modelo y verifiquemos la precisión de los datos de la prueba."

train <- iris_new[1:130,]
test <- iris_new[131:150,]
train_sp <- iris_random[1:130,5]
test_sp <- iris_random[131:150,5]

"Ahora podemos usar algoritmos K-NN.
Llamemos al paquete 'class' que contiene el algoritmo K-NN.
En el algoritmo k-NN, tenemos que proporcionar el valor 'k' que es la cantidad de vecinos más cercanos (NN)
a buscar para clasificar el punto de datos de prueba. Como práctica común, estoy tomando un valor impar,
tomémoslo como raíz cuadrada de la cantidad de observaciones.

Vamos a construir un modelo sobre él. cl es la clase del conjunto de datos de entrenamiento y k es el numero
de vecinos a buscar para clasificar la observacion."

require(class)
model <- knn(train= train,test=test,cl= train_sp,k=13)
table(factor(model))
table(test_sp,model)

"La matriz table(test_sp, modelo) también se denomina matriz de confusión.
Tiene test_sp en un eje y la predicción de modelo en el otro. Los elementos
diagonales son la cantidad de las observaciones predichas correctamente para esa especie.
Podemos ver cómo se desempeñó el modelo. Ha predicho todas las especies correctamente."

require(gmodels)

CrossTable(x=model, y=test_sp, chisq=FALSE)
