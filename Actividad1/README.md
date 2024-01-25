# Actividad 1 "Conceptos básicos de Sistemas Operativos"
| Nombre | Carnet |
| ------ | ------ |
| Pablo Josué Barahona Luncey| 202109715 |
## Tipos de kernel y sus diferencias

El kernel es el núcleo del sistema operativo, el software que gestiona los recursos del hardware y proporciona un entorno para que los programas de usuario puedan ejecutarse. Hay varios tipos de kernel diferentes, cada uno con sus propias ventajas y desventajas.

### Kernel monolítico

El kernel monolítico es el tipo de kernel más común. Es un único bloque de código que controla todos los aspectos del sistema operativo. Los kernels monolíticos son eficientes y fáciles de implementar, pero pueden ser difíciles de mantener y modificar.

### Kernel modular

El kernel modular es un tipo de kernel que está dividido en módulos separados. Cada módulo controla una función específica del sistema operativo, como el manejo de memoria, el acceso a dispositivos o el sistema de archivos. Los kernels modulares son más flexibles y fáciles de mantener que los kernels monolíticos, pero pueden ser menos eficientes.

### Kernel híbrido

El kernel híbrido es un tipo de kernel que combina las características de los kernels monolíticos y modulares. El núcleo central es monolítico, pero los módulos adicionales pueden cargarse o descargarse según sea necesario. Los kernels híbridos ofrecen una buena combinación de eficiencia y flexibilidad.

|      | Kernel monolítico | Kernel modular | Kernel híbrido |
| ---- | ----------------- | -------------- | -------------- |
| Ventajas | Eficiente, fácil de implementar | Flexible, fácil de mantener | Flexible, eficiente |
| Desventajas | Difícil de mantener y modificar | Menos eficiente que los demás | Menos flexible que los demás |

## User vs Kernel mode

En un sistema operativo multitarea, el procesador puede estar ejecutando varios programas a la vez. Para evitar que estos programas interfieran entre sí, el sistema operativo divide el procesador en dos modos: modo usuario y modo kernel.

### Modo usuario

El modo usuario es el modo en el que se ejecutan los programas de usuario. En este modo, los programas tienen acceso limitado a los recursos del sistema, como la memoria y los dispositivos.

## Modo kernel

El modo kernel es el modo en el que se ejecuta el kernel. En este modo, el kernel tiene acceso completo a los recursos del sistema.

|      | Modo usuario | Modo kernel |
| ---- | ------------ | ----------- |
| Ventajas | Los programas no pueden dañar el sistema | El kernel puede acceder a todos los recursos del sistema |
| Desventajas | Los programas no pueden acceder a todos los recursos del sistema | El kernel puede dañar el sistema y posee menos seguridad |

## Interruptions vs traps

Las interrupciones y las trampas son eventos que pueden interrumpir la ejecución de un programa de usuario. Las interrupciones son causadas por eventos externos al programa, como la entrada del usuario o la llegada de una señal. Las trampas son causadas por eventos internos al programa, como una excepción de desbordamiento de pila.

### Interrupciones

Las interrupciones son manejadas por el kernel. Cuando ocurre una interrupción, el kernel suspende la ejecución del programa de usuario y transfiere el control al código de manejo de interrupciones del kernel. El código de manejo de interrupciones determina cómo se debe responder a la interrupción.

### Trampas

Las trampas son manejadas por el propio programa de usuario. Cuando ocurre una trampa, el procesador salta a una dirección específica en el código del programa. El programa de usuario puede entonces manejar la trampa como desee.

|      | Interrupciones | Trampas |
| ---- | -------------- | ------- |
| Causa | Eventos externos | Eventos internos |
| Manejado por | Kernel | Programa de usuario |