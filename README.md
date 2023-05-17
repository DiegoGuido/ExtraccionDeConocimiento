# Extraccion De Conocimiento de base de datos
9 Cuatrimestre. Extracción de conocimiento de bases de datos

# UNIDAD 1

### HEAD Y TAIL
Para poder ver los ultimos o primeros registros de un archivo de datos

```R
head(file, number) -> head (maraton, 3)
tail(file, number) -> tail(maraton, 3)
```




# UNIDAD 2
## Preparación de los datos

# TEORIA

### PREPARACIÓN DE LOS DATOS

..* Las observaciones son lo equivalente a un registro y una variable es lo equivalente a una columna

..* Cada data frame corresponde a un solo tipo de observational unit, en java lo que sería equivalente a un Bean

..* Data set: Colección de valores donde cada uno pertenece a una variable y a una observación

..* Se pueden identificar conjuntos de datos desordenados cuando los nombres de columnas son valores

### DATA CLEANING

Proceso de corregir y eliminar los registros incorrectos de un data set. Con esto se busca obtener data sets consistentes y libres de errores, para que no se tengan errores durante el análisis. (Igual conocido como cleansing)

..* Se busca identificar y remplazar datos incompletos, incorrectos, irrelevantes o problemáticos.

Igual que en otros sectores entre antes se detecten los errores menor será el costo/impacto de limpieza y de dinero.

..* Duplicados. Existen dos o más observaciones identicas
..* Conflictivos. Cuando existen dos observaciones con distintos atributos
..* Incompletos.  Tienen valores faltantes
..* Inválidos. Los valores no cumplen con la estandarización correcta para la variable