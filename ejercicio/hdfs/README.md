# Ejercicio

Para ver la documentación de comandos del HDFS:
```
$ hadoop fs -help | less
```

Ejecutar los siguientes comandos:

```
$ echo "Hola mundo" > hola_mundo.txt
$ cat hola_mundo.txt
$ hadoop fs -ls /
$ hadoop fs -mkdir /archivos
$ hadoop fs -ls /
$ find dfs/
$ hadoop fs -copyFromLocal hola_mundo.txt /archivos
$ hadoop fs -ls /archivos
$ hadoop fs -cat /archivos/hola_mundo.txt
```

Una vez ejecutados los comandos básicos mostrados arriba, cómo podría descargar el fichero hola_mundo.txt del HDFS a local.

De qué forma podría borrar la carpeta /archivos del HDFS con todo su contenido.
