echo "=== 1. Cambio al directorio de MapReduce ==="
cd /opt/hadoop/share/hadoop/mapreduce

echo "=== 2. Verificar que no haya ejecuciones viejas ==="
rm -rf /tmp/datos_randomwriter /tmp/resultados_randomwriter

echo "=== 3. Generar datos binarios aleatorios con randomwriter (10 MB) ==="
hadoop jar hadoop-mapreduce-examples-3.3.6.jar randomwriter \
  -D mapreduce.randomwriter.bytespermap=10485760 \
  /tmp/datos_randomwriter

echo "=== 4. Verificar que se generaron los datos de entrada ==="
ls -l /tmp/datos_randomwriter

echo "=== 5. Ordenar los datos generados con sort ==="
hadoop jar hadoop-mapreduce-examples-3.3.6.jar sort /tmp/datos_randomwriter /tmp/resultados_randomwriter

echo "=== 6. Verificar el archivo de salida ordenado ==="
ls -l /tmp/resultados_randomwriter