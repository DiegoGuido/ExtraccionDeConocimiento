setwd("C:\\Users\\CC7\\Downloads")
maraton <- read.csv("maraton_ny.csv",
                    header = TRUE,
                    row.names = 1,
                    sep = ",",
                    dec=".")

##Limpiar consola CTRL + L

assign("x", 4) ##Para asignar valores a variables tambien

r <- numeric(4) ##Te asegura que lo que va a recibir es un número
r[1] <- 2

z <- logical(length = 0)

##Operador módulo
5%%2
## Division
# / division decimal
# %/% división entera
10/7
10%/%7

# En java && ||
# En R & |
x<-2
x == 3 & x < 6

#Tipos de datos
#Caracter, numero (double, integer)
#Lógico(boolean), complejos raw

nombre <-"Hugo"
edad <- 36L
cantidad <- 4
bandera <- T #TRUE, T o F, 1 o 0
raiz <- 3 + 5i
binario <- raw(2)

typeof(bandera)

func1 <- function(x, arithmetic=TRUE){
  if(is.character(x) | is.logical(x)){
    print("El argumento no es numerico")
  }else{
    if(arithmetic == TRUE){
      sum(x) / length(x)
    }else{
      prod(x)^(1/length(x))
    }
  }
  return("Cualquier cosa")
}
x <- c(2,3,4,5)

m <- func1(x)
func1

# Rango 
d <- 1:5

typeof(d)

#Utilizando la funcion seq
e <- seq(1,5, by=1.5)
e

#Replicando elementos
f<- rep(2:4, times=4)

#Usando la funcion scan
?scan
g <- scan()
g

vector <- c(1,2,3,4)
names(vector) <- c("p1", "p2", "p3", "p4") #Asignar nombres a los vectores
vector

inventario <- c('manzana'=30, 'pera'=10)
inventario2 <- c(inventario, 'pera'=10)
inventario2

#Añadir más elementos, pero sin names
inventario3 <- union(inventario, c('pera'=12))
inventario <- union(inventario, c('pera'=12))
#Selección de elementos de un vector
inventario[2]
inventario[1:2]
#Para seleccionar posicione que no están contiguas
inventario[c(1,3)]
inventario[-3] #No te va a mostrar el 3
inventario[-(2:3)]
inventario['manzana']

#Para quitar un elemento específico
inventario <- inventario[-3]

inventario <- c('manzana'=12, 'platano'=10, 'pera'=8)

#Selección por filtrado
inventario[inventario<10]
inventario[inventario== 8]
inventario[inventario %in% c(2,3,8,30)]
inventario[inventario %in% 2:30]

setwd("C:\\Users\\Informatica\\Documents\\Escuela\\ExtracciónDeConocimiento\\ExtraccionDeConocimiento")
maraton <- read.csv("maraton_ny.csv",
                    header = TRUE,
                    row.names = 1,
                    sep = ",",
                    dec=".")

#Seleccionar una columna individual de un dataframe
maraton$age
maraton$gender

#Fila 3, columna 4
maraton[3,4]
#10 primeras filas, 2 primeras columnas
maraton[1:10, 1:2]
#Todas las filas, solo columnas 1 y 5
maraton[4, c(1,5)]
#Solo fila 1 y 100, todas las columnas
maraton[c(1,100), ]
#Filas del 1 al 100, todas las columnas
maraton[1:100, ]
#Corredores cuyo genero es femenino
View(maraton[maraton$gender=='Female' & maraton$age==23,])

max(maraton$age)
min(maraton$age)
mean(maraton$age)
min(maraton$time)

dim(maraton)
nrow(maraton)

length(maraton)

#Conocer la dimension de un objeto
dimension <- dim(maraton)
typeof(dimension)
??integer

??rank

rank(inventario)
rank(maraton$time)
#Obtener key y posicion del elemento MAX y Min devuelven el indice
#de los valores maximos y minimos
which.max(maraton$age)
which.min(maraton$time)

house <- read.csv("house_rental.csv",
                    header = TRUE,
                    sep = ",",
                    dec=".")

View(house)
sum(house[house$Price>=60000 & house$Price<=80000, 5])