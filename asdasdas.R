# install.packages("remotes")
# remotes::install_github("R-CoderDotCom/ggdogs@main")
library(ggdogs)
# install.packages("ggplot2")
library(ggplot2)

grid <- expand.grid(1:5, 3:1)

df <- data.frame(x = grid[, 1],
                 y = grid[, 2],
                 image = c("doge", "doge_strong", "chihuahua",
                           "eyes", "gabe", "glasses",
                           "tail", "surprised", "thisisfine",
                           "hearing", "pug", "ears",
                           "husky", "husky_2", "chilaquil"))

ggplot(df) +
  geom_dog(aes(x, y, dog = image), size = 5) +
  geom_text(aes(x, y - 0.5, label = image), size = 2.5) +
  xlim(c(0.25, 5.5)) + 
  ylim(c(0.25, 3.5))
# ctrl + l es para limpiar la consola
# rm(variable) para eliminar la variable
# ls()
# rm(list = ls())  sirve para eliminar todas las variables

vector <- c(1,2,3,4,7)
vector2 <- c(TRUE,FALSE,TRUE,T,T,F)
vector3 <- c("a","la","mouser")
vector4 <- c(TRUE,10,30)
class(vector4)
vector5 <- c(FALSE,1,"Hola",1.2)
vector6 <-c(vector,"a")
1:10

vector[1] #para selecionar una posicion, empezando desde uno
vector[c(1,4,5)] #varias posiciones
vector[2:5] # desde una secuencia de posiciones
nombres <- c('a','b','c','d','e')
names(vector) <- nombres #nombrar posiciones del vector
vector['b']
vector[vector > 3] #datos mayores que cumplan la logica
filtro <- (vector >= 4) # variable para hacer el filtro
vector[filtro]

# MATRICES ---------------------------------------
vector <- 1:10
matriz <- matrix(vector) #matriz a partir de un vector en fila 1
matriz <- matrix(vector,nrow = 2) #matriz de dos filas
matriz <- matrix(vector,nrow = 2,byrow = TRUE) #dividir los datos a la mitad por fila
matriz2 <- matrix(1:12,nrow=3,ncol=4)
matriz2
matriz3 <- matrix(1:10,nrow=3,ncol=4)
matriz3
matriz4 <- matrix(1:12,nrow=3,ncol=4,byrow=T)
matriz4
vector <- 1:3
vector2 <- 5:8
vector3 <- 9:12
matriz5 <- rbind(vector,vector2,vector3)#une vectores por fila dentro de una matriz
matriz5
matriz6<- cbind(vector,vector2,vector3)#une vectores por columna en una matriz
matriz6
v1 <- c(NA,1,2)
v2 <- c(3,4,NA)
m1 <- rbind(v1,v2)
m1

dim(m1) # dimension para matrices / no funciona para unidimensionales

empresa1 <- c(100,80,90)
empresa2 <- c(50,120,80)
meses <- c("enero",'febrero','marzo')
ventas <- c(empresa1,empresa2)
ventas
matriz.ventas <- matrix(ventas,nrow=2,byrow=T)
matriz.ventas
mat.ve <- rbind(empresa1,empresa2)

colnames(matriz.ventas) <- meses #Nombrar columnas

empresas <- c("OXXO","7eleven")
rownames(matriz.ventas) <- empresas #Nombra filas

colSums(matriz.ventas)
rowSums(matriz.ventas)
colMeans(matriz.ventas)
rowMeans(matriz.ventas)

matriz.ventas[1:1] #Fila, columna respectivamente
matriz.ventas[,2]
matriz.ventas[2:1,] #desde un rango de elemntos
matriz.ventas[,2:3]

#- - CATEGORIAS ----------------------------
animales <- c("perro","gato","mono","perro","gato")
factor(animales) #muestra los elementos de categoria
summary(animales) #conteo de las palabras
summary(factor(animales)) ##elementos por tipos
temp <- c("frio","templado","frio","caliente","caliente","frio")
temp.ordens <- factor(temp, ordered = T,levels = c("frio","templado","caliente"))
temp.ordens
summary(temp.ordens)



##-------------------##-------------------##--------------------##------------##
#- - DATAFRAMES ----------------------------------------------------------------

iris
data()
AirPassengers

##Crear dataframes
meses <- c("enero",'febrero','marzo')
ventas <- c(120,100,80)
objetivo <- c(T,F,T)
datos <- data.frame(meses,ventas,objetivo) #Funcion para crear un frame
datos
str(datos) ##Muestra informacion adicional del frame(tipo de datos de columnas)
summary(datos) ##datos por columna
head(datos) ##muestra los primeros 5
tail(datos) ##muestra los ultimos 5

datos[1,] ##seleccionar la primera fila
datos[,1] ##seleccionar la primera columna
datos[2,2]
datos[1,"ventas"]
datos[1,c("meses","objetivo")]
datos[,c("meses","objetivo")]

subset(datos,subset = ventas <=100) ##muestra datos a atraves de una condicional

orden <- order(datos["ventas"])##Ordenar los datos de forma ascendente
orden.de <- order(-datos["ventas"]) ##ordena los datos de forma descendente
orden
orden.de
datos[orden,]
datos[orden.de,]

datos[1,'ventas']
datos$ventas ##devolver los datos como un vector
datos['objetivo']


##exportar el frame en un archivo
numeros <- 1:10
letras <- letters[1:10]
data <- data.frame(col1 =numeros,col2 = letras)
data
write.csv(data,file='padalustro.csv')
 ##extaer esos datas
data2 <- read.csv('padalustro.csv')
data2
##eliminar una columna
data2$X <- NULL

##JUNTAR LOS DATOS DE LOS DATAFRAME
datos1 <- data.frame(numeros,letras)
datos1
datos2 <- data.frame(numeros = 11, letras = 'k')
datos2
datos3 <- rbind(datos1,datos2)
datos3
## agregar columnas
datos3$multiplicacion <- (datos3$numeros * 2)
##renombrar a las columnas
colnames(datos3)
colnames(datos3) <- c("c1","c2","c3")
##renombras solo a una columna especifica
colnames(datos3)[3] <- 'Nueva'

##seleccionar una fila de acuerdo a una condicion
datos3[datos3$c1 > 6,]



