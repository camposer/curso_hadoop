# Ejercicios

1.- Obtener las películas donde se menciona al actor "Tom Cruise" dentro del review/text (debe especificar el número de repiticiones)

2.- Obtener el score promedio, menor y mayor por película (product/productId)

# Ejecución

Para validar las funciones map y reduce puede ejecutar primero los ejemplos utilizando únicamente la consola y luego con MapReduce.

## Ejecución con consola únicamente

### Ejercicio 1

```
$ cat movies-lines2000.txt | ./map1.awk | sort -k1 | ./reduce1.awk
```

### Ejercicio 2

```
$ cat movies-lines2000.txt | ./map2.awk | sort -k1 | ./combine2.awk | sort -k1 | ./reduce2.awk
```

## Ejecución con MapReduce

### Ejercicio 1
```
$ hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.2.6.jar -mapper map1.awk -reducer reduce1.awk -input /ejemplos/movies/movies-lines2000.txt -output /ejemplos/movies/output
```

### Ejercicio 2

```
$ hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.2.6.jar -mapper map2.awk -combiner combine2.awk -reducer reduce2.awk -input /ejemplos/movies/movies-lines2000.txt -output /ejemplos/movies/output
```

NOTA: Recuerde que la ubicación del archivo `movies-lines2000.txt` ser válida para Hadoop (ver HDFS). Por ejemplo: el siguiente comando debería ejecutarse satisfactoriamente: `hadoop fs -ls /ejemplos/movies/movies-lines2000.txt`

