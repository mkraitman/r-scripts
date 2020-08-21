#Escribir en R un script que reciba dos vectores de números y devuelva la intersección de ambos,
#es decir otro vector que contenga los elementos que pertenecen a ambos a la vez. 
#En caso en que un valor aparezca en ambos distinta cantidad de veces, en el vector 
#resultante deberá aparecer el mínimo entre ambas cantidades de apariciones. 
#(Desafío opcional: hacerlo con código de tamaño mínimo.)

#ejemplo: x = c(1,2, 2, 4, 5, 1, 3)
#y=c(1,2,4,2,2,2,2,2)
#la interseccióon será c(1,2,2,4)

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

#diferencia
diferencia <- function(x, y){
z <- x[y %in% x]
return(z)
}

interseccion <- function(x, y){
z <- x[x %in% y]
return(z)
}


