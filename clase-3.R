#Escribir en R un script que reciba dos vectores de n�meros y devuelva la intersecci�n de ambos,
#es decir otro vector que contenga los elementos que pertenecen a ambos a la vez. 
#En caso en que un valor aparezca en ambos distinta cantidad de veces, en el vector 
#resultante deber� aparecer el m�nimo entre ambas cantidades de apariciones. 
#(Desaf�o opcional: hacerlo con c�digo de tama�o m�nimo.)

#ejemplo: x = c(1,2, 2, 4, 5, 1, 3)
#y=c(1,2,4,2,2,2,2,2)
#la intersecci�on ser� c(1,2,2,4)

#con repeticion
interseccion <- function(x, y){
 z <- c()
  for(i in x){
    for(s in y){
      if(i==s){
        z <- c(z,i)
      }
    }
  }
  return(z)    
}

#sin repeticion
interseccion <- function(x, y){
z <- x[x %in% y]
return(z)
}

#diferencia
diferencia <- function(x, y){
z <- x[y %in% x]
return(z)
}



