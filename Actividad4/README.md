# Actividad 4
 
Para preparar el entorno debemos de crear los mkfifo

Ejecutamos estos comandos:
```bash
mkfifo person1_to_person2
mkfifo person2_to_person1
```
En una terminal ejecutamos este script para la persona 1:
```bash
#!/bin/bash

while true
do
    read message
    echo "[Persona 1]: $message" > person1_to_person2
done

```
En otra terminal ejecutamos este otro script para la persona 2:
```bash
#!/bin/bash

while true
do
    read message
    echo "[Persona 2]: $message" > person2_to_person1
done

```

Podemos ver el chat completo corriendo este script:
```bash
#!/bin/bash
while true
do
    if read message < person1_to_person2; then
        echo "$message"
    fi
    if read message < person2_to_person1; then
        echo "$message"
    fi
done
```