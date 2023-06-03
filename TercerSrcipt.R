promedio <- mean(20:50)
suma <- sum(20:50)

#install.packages("dplyr")
#library(dplyr)

a <- c(1,2,3)
b <- c(4,5,6)
c <- c(7,8,9)

#Funciones de combinacion en R rbind (row) y cbind (column)

matriz <- rbind(vector1, vector2, vector3)

#Matriz
matriz2 <- matrix(c(a,b,c),
                  nrow=3,
                  ncol=3,
                  byrow= TRUE,
                  dimnames = list(
                                c("row1", "row2", "row3"),
                                c("C.1", "C.2", "C.3")
                  ))

?matrix

setwd("C:\\Users\\Informatica\\Documents\\Escuela\\ExtracciónDeConocimiento\\ExtraccionDeConocimiento")
pizza <- read.csv("pizzaplace.csv",
                    header = TRUE,
                    row.names = 1,
                    sep = ",",
                    dec=".")
#Un tipo de dato
tipos <- factor(pizza$type)

nlevels(tipos)
?factor

max(pizza$price)
pizza[which.max(pizza$price), 4]
?arrange
(pizza %>% count(size) %>% arrange(n))[1,1]
#desc() para ordernar en order descendente
#[FILAS, COLUMNAS]

#d. Muestra solamente las ventas de pizza
# de marzo a abril donde se hayan vendido pizzas grandes

View(pizza %>% filter(size=="L"
                      & as.Date(date)>= "2015-03-01"
                      & as.Date(date)<= "2015-04-30"))
#e.
resultado <- (pizza %>% filter(
                       as.Date(date)>='2015-08-01' 
                     & as.Date(date)<='2015-08-31')
                 %>%
                   select(name, size))

View(resultado)

min(pizza$time)
max(pizza$time)

print(paste(min(pizza$time), "-", max(pizza$time)))
max(pizza$time)
