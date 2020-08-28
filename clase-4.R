#cargar datos del archivo clientes.csv en un dataframe
df <- read.csv("C:/Users/Martin Kraitman/git/r-scripts/archivos-csv/clientes.csv")

#imprimir datos para verificar que estemos leyendo el archivo correctmanete
print(df, quote = TRUE, row.names = FALSE)

#para imprimir un solo campo de la tabla
df$mail

#para obtener clusters (el valor de K es el ultimo parametro kmeans(df[,-1],K))
clusters <- kmeans(df[,-1],4)
print(summary(clusters))
print(clusters)

#graficar los puntos por cluster
plot(df[,-1], col = clusters$cluster)

#graficar centroides
points(clusters$centers, col = 4:6, pch = 4, cex = 2)

print(clusters$tot.withinss)


# Ejercicio

# Sobre el archivo clientes.csv, aplicar a las columnas 2 y 3 la 
# función k-means para k = 4 clusters. Hacer lo mismo para k = 5 y para k = 6.

#k = 4 
grupo1 <- kmeans(df[,-1],4)

#k = 5
grupo2 <- kmeans(df[,-1],5)

#k = 6 
grupo3 <- kmeans(df[,-1],6)

# Hacer un plot de los puntos y marcar los centroides de los clusters con símbolos distintos,
# para los tres casos.

plot(df[,-1], col = grupo1$cluster)
points(grupo1$centers, col = 4:6, pch = 4, cex = 2)

plot(df[,-1], col = grupo2$cluster)
points(grupo2$centers, col = 4:6, pch = 4, cex = 2)

plot(df[,-1], col = grupo3$cluster)
points(grupo3$centers, col = 4:6, pch = 4, cex = 2)


install.packages("animation")
library(animation)


# Interpretar y comparar a ojo los gráficos.

# Escribir código para calcular el promedio de puntos por cluster, y aplicarlo a los tres casos.

# Si misGrupos es uno de los clustering obtenidos, ¿qué información se imprime con print(table(misGrupos$cluster))?


