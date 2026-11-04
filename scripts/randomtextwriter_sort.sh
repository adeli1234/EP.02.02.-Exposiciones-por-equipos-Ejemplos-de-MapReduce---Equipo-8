echo "=== 1. Cambio al directorio de MapReduce ==="
cd /opt/hadoop/share/hadoop/mapreduce

echo "=== 2. Verificar que no haya ejecuciones viejas ==="
rm -rf /tmp/datos /tmp/resultados_randomtext

echo "=== 3. Generar datos binarios aleatorios con randomwriter (10 MB) ==="
hadoop jar hadoop-mapreduce-examples-3.3.6.jar randomwriter \
  -D mapreduce.randomwriter.bytespermap=20971520 \
  /tmp/datos_randomtext

echo "=== 4. Verificar que se generaron los datos de entrada ==="
ls -l /tmp/datos_randomtext

echo "=== 5. Ordenar los datos generados con sort ==="
hadoop jar hadoop-mapreduce-examples-3.3.6.jar sort -outKey org.apache.hadoop.io.Text -outValue org.apache.hadoop.io.Text /tmp/datos_randomtext /tmp/resultados_randomtext

echo "=== 6. Verificar el archivo de salida ordenado ==="
ls -l /tmp/resultados_randomtext