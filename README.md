# EP.02.02.-Exposiciones-por-equipos-Ejemplos-de-MapReduce---Equipo-8

## Equipo 8:
* Jethro Ivann Valle Gomez
* Juan Pedro Carapia Rocha
* Elí García Pérez

## Paso a Paso (RandomWriter y Sort):
Antes de ejecutar cualquier comando se debe verificar que se sepa el lugar en donde se tiene que reproducir (💻 - Computadora, 🐳 - Contenedor).

1. Se hecha a andar el contenedor previamente creado en Docker: 💻 `docker start -ai hadoop`

2. Se entra como *root*. Se tiene que cambiar al usuario de Hadoop: 🐳 `su - hadoop`; al final se tiene que ver `hadoop@hadoop: ~$`

3. Se verifica que el contenedor este existente y encendido: 💻 `docker ps -a`; se debe de leer "Up" debajo de STATUS si es que está encendido, "Excited" si está apagado.

4. Se cambia al directorio de mapreduce: 🐳 `cd /opt/hadoop/share/hadoop/mapreduce`

5. Se ejecuta el comando: 🐳 `hadoop jar hadoop-mapreduce-examples-3.3.6.jar randomwriter -D mapreduce.randomwriter.bytespermap=10485760 /tmp/datos`

- **-D**: Limita el tamaño generado por cada tarea Map: ".bytespermap=10485760", se limita a 10MB.
- **/tmp/datos**: Se guarda en una carpeta creada en el momento llamada "datos" (entrada).

6. Se debe asegurar que la operación fuese exitosa: 🐳 `ls /tmp/datos`. Si lo fue debe de salir este mensaje "**_SUCCESS  part-m-00000**". Se puede ver el archivo generado con: `head -n 20 /tmp/datos/part-m-00000`

7. Se ejecuta el comando: 🐳 `hadoop jar hadoop-mapreduce-examples-3.3.6.jar sort /tmp/datos /tmp/resultados`

- **sort /tmp/datos /tmp/resultados**: Toma los datos de "entrada" (/datos) que se generaron con 'randomwriter' y los ordena con 'sort' como datos de salida (/resultados).

9. Se debe asegurar que la operación fuese exitosa: 🐳 `ls /tmp/resultados`. Si lo fue debe de salir este mensaje "**_SUCCESS  part-m-00000**". Se puede ver el archivo generado con: `head -n 20 /tmp/resultados/part-m-00000`

9. Se verifica que se hayan generado los archivos de salida correctamente: `ls /tmp/resultados`

