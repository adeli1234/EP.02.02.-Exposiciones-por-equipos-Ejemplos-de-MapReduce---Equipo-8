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

5. Se ejecuta el comando: 🐳 `hadoop jar hadoop-mapreduce-examples-3.3.6.jar randomwriter -D mapreduce.randomwriter.bytespermap=10485760 /tmp/datos_randomwrite`

    - **-D**: Limita el tamaño generado por cada tarea Map: ".bytespermap=10485760", se limita a 10MB.
    - **/tmp/datos_randomwrite**: Se guarda en una carpeta creada en el momento llamada "datos_randomwrite" (entrada).

6. Se debe asegurar que la operación fuese exitosa: 🐳 `ls /tmp/datos_randomwrite`. Si lo fue debe de salir este mensaje "**_SUCCESS  part-m-00000**". Se puede ver el archivo generado con: 🐳 `head -n 20 /tmp/datos_randomwrite/part-m-00000`

7. Se ejecuta el comando: 🐳 `hadoop jar hadoop-mapreduce-examples-3.3.6.jar sort /tmp/datos_randomwrite /tmp/resultados_randomwrite`

    - **sort /tmp/datos_randomwrite /tmp/resultados_randomwrite**: Toma los datos de "entrada" (/datos) que se generaron con 'randomwriter' y los ordena con 'sort' como datos de salida (/resultados_randomwrite).

9. Se debe asegurar que la operación fuese exitosa: 🐳 `ls /tmp/resultados_randomwrite`. Si lo fue debe de salir este mensaje "**_SUCCESS  part-m-00000**". Se puede ver el archivo generado con: 🐳 `head -n 20 /tmp/resultados_randomwrite/part-m-00000`

9. Se verifica que se hayan generado los archivos de salida correctamente: 🐳 `ls /tmp/resultados_randomwrite`

10. Se transfieren los resultados de las carpetas a la carpeta deseada, en este caso sería dentro del repositorio de GitHub con la carpeta de "/datos_randomwrite" y "/resultados_randomwrite" ya creadas previamente.
    - 💻 `docker cp hadoop:/tmp/resultados/part-m-00000 ./datos_randomwrite/`
    - 💻 `docker cp hadoop:/tmp/resultados/part-m-00000 ./resultados_randomwrite/`

---

## Paso a Paso (RandomTextWriter y Sort):
En este caso se desarrolla casi lo mismo, se genera un archivo con elementos aleatorios y se ordena, solo que en este caso, el tamaño del archivo aumenta al doble de su tamaño (20MB) y se configura 'sort' para que pueda lidiar con archivos de texto. Los pasos cambian hasta el punto 5.

1. Se hecha a andar el contenedor previamente creado en Docker: 💻 `docker start -ai hadoop`

2. Se entra como *root*. Se tiene que cambiar al usuario de Hadoop: 🐳 `su - hadoop`; al final se tiene que ver `hadoop@hadoop: ~$`

3. Se verifica que el contenedor este existente y encendido: 💻 `docker ps -a`; se debe de leer "Up" debajo de STATUS si es que está encendido, "Excited" si está apagado.

4. Se cambia al directorio de mapreduce: 🐳 `cd /opt/hadoop/share/hadoop/mapreduce`

5. Se ejecuta el comando: 🐳 `hadoop jar hadoop-mapreduce-examples-3.3.6.jar randomtextwriter -D mapreduce.randomtextwriter.totalbytes=20971520 /tmp/datos_randomtext`

    - **-D**: Limita el tamaño generado por cada tarea Map: ".bytespermap=10485760", se limita a 10MB.
    - **/tmp/datos_randomtext**: Se guarda en una carpeta creada en el momento llamada "datos_randomtext" (entrada).

6. Se debe asegurar que la operación fuese exitosa: 🐳 `ls /tmp/datos_randomtext`. Si lo fue debe de salir este mensaje "**_SUCCESS  part-m-00000**". Se puede ver el archivo generado con: 🐳 `head -n 20 /tmp/datos_randomtext/part-m-00000`

7. Se ejecuta el comando: 🐳 `hadoop jar hadoop-mapreduce-examples-3.3.6.jar sort /tmp/datos_randomtext /tmp/resultados_randomtext`

    - **sort /tmp/datos_randomtext /tmp/resultados_randomtext**: Toma los datos de "entrada" (/datos) que se generaron con 'randomwriter' y los ordena con 'sort' como datos de salida (/resultados_randomwrite).

9. Se debe asegurar que la operación fuese exitosa: 🐳 `ls /tmp/resultados_randomtext`. Si lo fue debe de salir este mensaje "**_SUCCESS  part-m-00000**". Se puede ver el archivo generado con: 🐳 `head -n 20 /tmp/resultados_randomtext/part-m-00000`

9. Se verifica que se hayan generado los archivos de salida correctamente: 🐳 `ls /tmp/resultados_randomtext`

10. Se transfieren los resultados de las carpetas a la carpeta deseada, en este caso sería dentro del repositorio de GitHub con la carpeta de "/datos_randomwrite" y "/resultados_randomwrite" ya creadas previamente.
    - 💻 `docker cp hadoop:/tmp/resultados/part-m-00000 ./datos_randomtext/`
    - 💻 `docker cp hadoop:/tmp/resultados/part-m-00000 ./resultados_randomtext/`