##### Practica de Clasificación con K Nearest Neighbors --------------------

## Determinando de qué bodega es un vino ----
## Explorando y preparando los datos  ---- 

# 1 importe el archivo CSV vinos.csv a un data frame llamado vinos,
# no tome los strings como factores

# examine la estructura del data frame con str()

# Analice con table() la distribucion de la variable "bodega"

table(vinos$bodega)

# 2 recodifique bodega como factor


# la volvemos a ver con un formato más informativo

round(prop.table(table(vinos$bodega)) * 100, digits = 1)

# 3 ¿Cual es la distribucion de las bodegas
 
# sumarice las tres variables numericas "alcohol", "a_malico" y "flavonoides"

summary(vinos[c("alcohol", "a_malico", "flavonoides")])

# 4 ¿Hace falta mezclar los datos? Si es así, hágalo. Utilice un valor
# de seed de 4237

# Funcion de normalizacion

normalizo <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

# Prueba de la funcion de normalización - los resultados deberian ser identicos

normalizo(c(1, 2, 3, 4, 5))
normalizo(c(10, 20, 30, 40, 50))

# 5 Utilice lapply para crear el dataframe vinos_n,
# sin la bodega


# 6 confirme con summary que la normalizacion funciono


# 7 genere los datos de entrenamiento y prueba con
# con las filas de 1 a 136 y de 137 a 178

# vinos_train <- 
# vinos_test <- 

# 8 Genere las etiquetas para los juegos de training y test

vinos_train_labels <- 
vinos_test_labels <- 

# 9 verifique con prop.table que ambos juegos de "labels" tengan
# la misma distribucion

## Entrenando un modelo con los datos ----

# Cargue la biblioteca "class"

# 10 Cree el modelo vinos_test_pred con la función knn, utilice como valor de k
# la raíz cuadrada de la cantidad de observaciones


## Evaluando el desempeño del modelo  ----

# cargue la biblioteca "gmodels" 

library(gmodels)


# Cree la matriz de confusion predicho vs. actual

CrossTable(x = vinos_test_labels, y = vinos_test_pred,
           prop.chisq=FALSE)

# 11 Analice los resultados