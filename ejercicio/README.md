# Ejercicio

Este ejercicio incluye soluciones para cada una de las siguientes tecnologías:
- MapReduce (utilizando streaming) 
- Pig
- Hive

Los ejemplos utilizan el fichero `movies-lines2000.txt`. Este fichero resulta del procesamiento del archivo `movies.txt` que podrá conseguir en los siguientes enlaces:
- http://smartcamp.es/~camposer/hadoop/movies.zip , o
- http://snap.stanford.edu/data/web-Movies.html

Para preparar el fichero `movies-lines2000.txt`:
```
$ awk -f process.awk movies.txt > movies-lines.txt
$ head -2000 movies-lines.txt > movies-lines2000.txt
```
