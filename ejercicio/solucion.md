# Solución del Mini Ejercicio

```bash
# Paso 1: Ir a la ruta del JAR
cd /opt/hadoop/share/hadoop/mapreduce

# Paso 2: Generar 5 MB de texto aleatorio
hadoop jar hadoop-mapreduce-examples-3.3.6.jar randomtextwriter -D mapreduce.randomtextwriter.bytespermap=5242880 /tmp/ejercicio_entrada

# Paso 3: Ordenar el texto generado
hadoop jar hadoop-mapreduce-examples-3.3.6.jar sort -outKey org.apache.hadoop.io.Text -outValue org.apache.hadoop.io.Text /tmp/ejercicio_entrada /tmp/ejercicio_salida

# Paso 4: Comprobar la salida
ls /tmp/ejercicio_salida
```