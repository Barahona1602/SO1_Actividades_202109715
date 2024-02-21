# Actividad 3
 
Para instalar debemos de ejecutar lo siguiente:

Ejecutar la ruta del archivo sh:
```bash
chmod +x /home/pbara/saludo.sh
```
Creamos un servicio (esto se puede crear con el editor o con un archivo previo)
Nos movemos a la ruta /etc/systemd/system/
Creamos el servicio con lo siguiente:
```bash
nano saludo.service
```
En el editor de texto, donde dice ExecStart pondremos la ruta del script y guardaremos

Luego, habilitamos el servicio con el siguiente comando:
```bash
sudo systemctl enable saludo.service
```
Lo iniciamos con:
```bash
sudo systemctl start saludo.service
```
Podemos ver el servicio:
```bash
sudo systemctl status saludo.service
```
Para parar el servicio:
```bash
sudo systemctl stop saludo.service
```