##Ejercicio 1 --dataframes
#crear datafame de 3 personas con su nombre,edad, sexo

nombre <- c("Antonio","Maria","Juan")
edad <- c(40,30,35)
sexo <- c('M','F','M')
personas <- data.frame(nombre,edad,sexo)
personas

iris
str(iris)
##EJERCICIO 2 ----------------------------------------------------------------
nrow(iris['Species'])

#Punto1
nrow(subset(iris,subset = Species =='virginica'))
nrow(subset(iris,subset = Species =='versicolor'))
nrow(subset(iris,subset = Species =='setosa'))
summary(factor(iris$Species))

#Punto2

sd(iris[,"Sepal.Length"])
sd(iris[,"Sepal.Width"])
sd(iris[,"Petal.Length"])
sd(iris[,"Petal.Width"])

sd(subset(iris,,c('Sepal.Length', 'Sepal.Width', 'Petal.Length','Petal.Width')))

data <- iris[,c(1,2,3,4),2,sd]
data
sd(data)
matriz <- matrix(iris)
#punto3
setosa <- subset(iris,subset = iris$Species == "setosa")
setosa
sd(setosa[,"Petal.Width"])
#punto4
setosa <- subset(iris,subset = iris$Species == "setosa")
versicolor <- subset(iris,subset = iris$Species == "versicolor")
virginica <- subset(iris,subset = iris$Species == "virginica")


sd(setosa[,"Petal.Width"])
sd(versicolor[,"Petal.Width"])
sd(virginica[,"Petal.Width"])










