# Mini Ejercicio: Generación y Ordenamiento de Datos en MapReduce

## Objetivo
Aplicar los comandos de `randomtextwriter` y `sort` para generar un conjunto de datos de texto sintético y luego ordenarlo de forma distribuida en Hadoop.

## Requisitos y Parámetros
* **Tamaño deseado:** 5 MB (5,242,880 bytes).
* **Ruta de entrada (generación):** `/tmp/ejercicio_entrada`
* **Ruta de salida (ordenado):** `/tmp/ejercicio_salida`

## Instrucciones para el alumno
1. Ubícate en el directorio `/opt/hadoop/share/hadoop/mapreduce` dentro del contenedor de Hadoop.
2. Genera los **5 MB** de datos de texto sintético en la ruta `/tmp/ejercicio_entrada` usando `randomtextwriter` y la opción `-D mapreduce.randomtextwriter.bytespermap=5242880`.
3. Ordena los datos producidos en la ruta `/tmp/ejercicio_salida` usando `sort`. *(Pista: Recuerda especificar el tipo de clave/valor `Text` mediante `-outKey` y `-outValue` para evitar errores de compatibilidad de tipos).*
4. Verifica con `ls` que el archivo ordenado existe dentro de la carpeta de salida.