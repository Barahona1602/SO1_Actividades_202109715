# Actividad 5
## Preguntas
¿Cuántos procesos únicos son creados?
En el programa se crean 4 procesos únicos
- Proceso Padre
- Proceso Hijo
- Proceso Hijo
- Proceso Nieto (Proceso hijo del hijo)

¿Cuántos hilos únicos son creados?
Se crea solamente 1 hilo único en el proceso hijo 1. Este ocurre en la llamada a pthread_create(), donde sea crea un nuevo hilo y se ejecuta.