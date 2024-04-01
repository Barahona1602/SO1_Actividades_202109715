# Actividad 7
Pablo Josué Barahona Luncey

202109715

Características principales del CFS:

- Equidad: CFS se esfuerza por proporcionar un acceso justo a la CPU a todos los procesos en ejecución. Se basa en el algoritmo de Fair Queuing para garantizar que cada proceso reciba una cantidad proporcional de tiempo de CPU.
- Eficiencia: CFS utiliza un árbol rojo-negro para organizar los procesos en ejecución, lo que permite una búsqueda y actualización eficientes. Esto significa que CFS puede manejar un gran número de procesos sin una penalización significativa en el rendimiento.
- Escalabilidad: CFS es altamente escalable y puede funcionar eficazmente en sistemas con un solo núcleo o con múltiples núcleos.
- Flexibilidad: CFS ofrece una variedad de opciones de configuración que permiten a los administradores del sistema ajustar el comportamiento del planificador para satisfacer las necesidades específicas de su sistema.
- Prioridad: CFS permite a los usuarios especificar la prioridad de un proceso. Los procesos con mayor prioridad recibirán más tiempo de CPU que los procesos con menor prioridad.

Funcionamiento del CFS:

- Árbol rojo-negro: CFS utiliza un árbol rojo-negro para organizar los procesos en ejecución. Cada nodo del árbol representa un proceso o un grupo de procesos. El árbol se mantiene ordenado por el tiempo de espera de cada proceso.
- Tiempo de espera: El tiempo de espera de un proceso es la cantidad de tiempo que ha estado esperando para ejecutarse en la CPU. El tiempo de espera se incrementa cada vez que un proceso se ejecuta y se decrementa cada vez que un proceso espera.
- Selección de procesos: Cuando la CPU está disponible, CFS selecciona el proceso con el mayor tiempo de espera del árbol rojo-negro. Este proceso se ejecutará hasta que agote su tiempo de espera o hasta que se bloquee.
- Equilibrio de carga: CFS utiliza un algoritmo de equilibrio de carga para distribuir los procesos entre los diferentes núcleos de la CPU. Esto ayuda a garantizar que todos los núcleos estén siendo utilizados de manera eficiente.
