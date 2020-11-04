install.packages("C50")
library(C50)

credit <- read.csv("C:/Users/Martin Kraitman/git/r-scripts/archivos-csv/credit.csv", stringsAsFactors=TRUE)

#informacion del data frame
str(credit)
table(credit$checking_balance)
table(credit$savings_balance)

summary(credit$months_loan_duration)
summary(credit$amount)

set.seed(123)

train_sample <- sample(1000, 900)

#Creamos el conjunto de entrenamiento
#estamos definiendo filas al azar para poder entrenar
#le pasamos el train_sample en filas ,
credit_train <- credit[train_sample,]


#Creamos el conjunto de test
credit_test <- credit[-train_sample]
set.seed(3)
prop.table(table(credit_train$default))

credit_model <- C5.0.default(credit_train[-17], credit_train$default)
credit_model
#elije primero lo que exluya mas
prop.table(table(credit_train$default))
plot(credit_model)

#se puede armar trials (una cantidad N de arboles)

#a partir de esto podemos elejir cual tenga menos porcentaje de error



