# Solución del Mini Ejercicio

## Paso 1: Ir a la ruta del JAR

```bash

cd /opt/hadoop/share/hadoop/mapreduce

hadoop jar hadoop-mapreduce-examples-3.3.6.jar randomtextwriter -D mapreduce.randomtextwriter.bytespermap=5242880 /tmp/ejercicio_entrada

hadoop jar hadoop-mapreduce-examples-3.3.6.jar sort -outKey org.apache.hadoop.io.Text -outValue org.apache.hadoop.io.Text /tmp/ejercicio_entrada /tmp/ejercicio_salida

ls /tmp/ejercicio_salida

### ¿Cómo darle permisos al `.sh` antes de subirlo a Git?
En la terminal de tu máquina (VS Code), otorga permisos de ejecución al script antes de hacer el commit:
```bash