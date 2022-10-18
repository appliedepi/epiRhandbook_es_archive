#########################################################################
##########       Arreglar paquetes para compilación ####################
#########################################################################

#1. Instalar R 4.1.0
#2. Instalar Última versión de RStudio
#3. Instalar RTools 40 y checar que está bien instalado

#3.1 Importante fijar como path al instalarlo c:\RTools40\usr\bin o el que corresponda a tu path.
#3.2 Importante leer https://github.com/r-windows/docs/blob/master/rtools40.md

#4. Hacer fork en github y crear carpeta llamada "compilacion_nombreusuario" 
#( Para así usar renv en nuestro pc al acabar y guardar la configuración de los paquetes para compilar después)
#5. Descargar de github a R Studio el proyecto "compilacion_nombreusuario", haciendo pull.  
#6. Copiar y pegar las carpetas "scripts" y "data" a la carpeta raíz donde se encuentre compilacion_nombreusuario.Rproj, sobrescribiendo. 
#7. Correr el código de "scripts/run.R" (Introducir tecla 3 y pulsar intro cuando solicite)
#8. Realizar compilación
#9. Escribir en la consola renv::init() renv::snapshot() tras compilación para guardar la configuración de los paquetes en el proyecto. 
#Se creará un archivo llamado renv.lock. 
#10. Hacer commit y push a nuestro fork.  

##########################################################################
##########                     Instalador                      ###########
##########################################################################

source("scripts/instalacion_paquetes.r")
