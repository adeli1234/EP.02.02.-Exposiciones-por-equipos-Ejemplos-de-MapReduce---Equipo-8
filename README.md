# EP.02.02.-Exposiciones-por-equipos-Ejemplos-de-MapReduce---Equipo-8

## Equipo 8:
* Jethro Ivann Valle Gomez
* Juan Pedro Carapia Rocha
* Elí García Pérez

## Paso a Paso:
Antes de ejecutar cualquier comando se debe verificar que se sepa el lugar en donde se tiene que reproducir (💻 - Computadora, 🐳 - Contenedor).

**1. Se hecha a andar el contenedor previamente creado en Docker: 💻 `docker start -ai hadoop`**

**2. Se entra como *root*. Se tiene que cambiar al usuario de Hadoop: 🐳 `su - hadoop`; al final se tiene que ver `hadoop@hadoop: ~$`**

**3. Se verifica que el contenedor este existente y encendido: 💻 `docker ps -a`; se debe de leer "Up" debajo de STATUS si es que está encendido, "Excited" si está apagado.**

**4. Se cambia al directorio de mapreduce: 🐳 `cd /opt/hadoop/share/hadoop/mapreduce`**

**5. Se ejecuta el comando: 🐳 `hadoop jar hadoop-mapreduce-examples-3.3.6.jar randomtextwriter -D mapreduce.randomtextwriter.bytespermap=10485760 /tmp/datos`**

- **-D**: Limita el tamaño generado por cada tarea Map: ".bytespermap=10485760", se limita a 10MB.

**6. Se crea una carpeta donde se introducirán los datos de salida, en este caso será llamada "resultados": 🐳 `mkdir /tmp/resultados`**

**7. ``**