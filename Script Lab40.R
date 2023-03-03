#----------------LABORATORIO 40 -------------------
#-------DRA. CARLA CAROLINA PÉREZ HERNÁNDEZ--------

#--------ALUMNA: Ana Grisel Sanjuan Merida---------

###LAB API DATAMEx ÚTIL PARA PROPIA INVESTIGACIÓN###

#Visitar la página https://api.datamexico.org/ui/
#Se podrá observar el cubo de consulta de la API de DataMéxico
#Trabajaremos con el la inversión en industria
#Para conocer la inversión en las diferentes industrias de los estados de la república mexicana y los años en que se realizaron). Me permitirá identificar las industrias con mayor inversión y plantear la pregunta si dicha inversión podría implicar uso de tecnología
#Para el primer drilldown se selecciona Geography/State
#Para el segundo drilldown se selecciona Año
#Y para el tercero se selecciona el IED industry
#En Measures seleccionamos Inversión
#Ejecutamos el query
#En el ícono de cámara fotográfica damos clic
#Se descarga el archivo en las tres extensiones (CSV, JSON Tidy y JSON Arrays)

#Actividad en R

#Instalar el paquete jsonlite
install.packages("jsonlite")

#Se abre la librería de jsonlite
library(jsonlite)

#Seleccionamos el json que acabamos de descargar
file.choose()
#El archivo es State-Year-Sector-records.json

#Copiamos la ubicación del archivo
#Generamos un data llamado datos_api40
datos_api40 <- fromJSON("C:\\Users\\Lenovo\\Documents\\GitHub\\LAB-40\\L40 Input\\State-Year-Sector-records.json")
#En el enviroement ya se pueden apreciar los datos

#Para saber que tipo de datos son, corremos class con el nombre del objeto recién creado
class(datos_api40)
#En la consola podemos ver que es una lista

#Para conocer los nombres de dicha lista, corremos names del objeto
names(datos_api40)

#Para corroborar, damos doble clic en el objeto que esta en el Enviroment
#Se abre nuevo Script y podemos ver los names
#Tengo dos: 
#El data frame de la API que descargamos de DataMéxico (dar clic en el ícono de pergamino para desplegar)
#Y el source

#Para ver el data frame del objeto creado
View(datos_api40[["data"]])

#Creamos objeto llamado final_API40 del name data que pertenece al objeto datos_api40
final_API40 <- as.data.frame((datos_api40[["data"]]))
#El objeto se puede ver en el enviroment

#Para corroborar que la lista del name data ahora es un data frame, corremos class del objeto recien obtenido
class(final_API40)
#Corroborarmos que es un data frame

#Para guardarlo como un archivo csv, corremos write.csv y lo guardamos en los documentos
write.csv(final_API40, file = "final_API40.CSV")
#Ahora, del material descargado de la API de DataMéxico, hemos generado un archivo csv


#------------------- FIN DE LABORATORIO 40 ------------------------
