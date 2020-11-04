## Practica: Identificando Hongos Venenosos ----
## Explorando y preparando los datos ---- 

## Cree un dataframe "hongos" con los datos de mushrooms.csv
## considerando los strings como factores
hongos <- read.csv("C:/Users/abion/Documents/PR3/Arboles De Decision/Alumno/mushrooms.csv" ,stringsAsFactors = TRUE)

# examine la estructura del data frame con str(), summary() y names()

str(hongos)
summary(hongos)
names(hongos)

# hay una columna que tiene solamente un valor
# determine cuál es esa columna y elimínela
hongos$veil_type<-NULL


# examine cómo están distribuidos los hongos en comestibles ("edible")
## y venenosos ("poisonous") con table()
summary(hongos$type)
table(hongos$type)



## usando como semilla 123, genere un vector train_sample con 7000
## valores tomados de una población del mismo
set.seed(123)
train_sample<- sample(1:8124,7000)

# genere los juegos de datos de entrenamiento y prueba 

hongos_train <- hongos[train_sample,]
hongos_test  <- hongos[-train_sample,]

## entrene un modelo C5.0 con los datos de entrenamiento

install.packages("C50")
library(C50)

hongos_model <- C5.0(hongos_train[-1], hongos_train$type)



## Evalue el desempeño del modelo con predict() y CrossTable
hongos_predict <- predict(object = hongos_model,hongos_test)
library(gmodels)

CrossTable(hongos_test$type, hongos_predict,
           prop.chisq = FALSE, prop.c = FALSE, prop.r = FALSE,
           dnn = c('Venenosos', 'Sanitos'))

## Indique cuál es la probabilidad de morir envenenado por

## comer hongos