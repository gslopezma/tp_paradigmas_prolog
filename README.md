# tp_paradigmas_prolog

Primer cuatrimestre de 2020
Paradigmas de Programación (Programación Lógica)
Trabajo Práctico 1b: Solución a Circuit Scramble

	Se pide programar en Prolog soluciones a una serie de puzzles llamado Circuit Scramble donde cada puzzle representa un circuito de compuestas lógicas que posee una lista de señales de entrada iniciales (donde cada señal puede ser off u on) y a partir de conexiones de las señales pasando por compuestas lógicas conocidas de una señal de entrada (NOT) y de dos señales de entradas (OR, AND y XOR) se llega a una señal final. Se puede dar que la salida de una compuerta se puede conectar a una o más compuertas seguientes en el circuito.

	Además algunos puzzles de este tipo pueden tener otros tipos de entrada adicionales a las señales de entrada iniciales que son los switches,
  cuyos valor de cada uno puede ser izquierdo o derecho. Todo switch recibe una señal de entrada y tiene dos señales de salida, una a la izquierda 
  y la otra a la derecha. Si un switch tiene el valor izquierdo, copia el valor de la señal de entrada a la señal de salida de la izquierda, 
  mientras que la señal de salida de la derecha la deja en off. En forma análoga, si un switch tiene el valor derecho, copia el valor de la señal de entrada a la señal de salida de la derecha, mientras que la señal de salida de la izquierda la deja en off.
Adicionalmente, el circuito puede finalizar con dos o más señales finales, que implícitamente se unen entre ellas a través de una compuerta AND con una cantidad de señales de entrada múltiples.

	El puzzle consiste en dar valores adecuados a todos los datos de entrada del puzzle que logren que la señal final sea on. Puede llegar a ocurrir que el puzzle tenga más de una solución (combinación de valores de las entradas que cumplan que la señal final sea on). Cada puzzle tiene un número que lo identifica (número de nivel).

	Un ejemplo de circuito puede ser el siguiente:

 

	En este ejemplo abajo se ven las señales de entrada iniciales (en este caso son 8), y además se ve que posee 2 switches. Las entradas se visualizan dentro de un rectángulo blanco. En el circuito, las señales en off se muestran en marrón, mientras que las señales en on se muestran en azul.

	Se solicita que que exista un predicado puzzle donde cada hecho o regla tenga toda la información de un solo puzzle (número de nivel, datos de entrada -lista de señales de entrada más los posibles switches si corresponden a ese puzzle- y el contenido del puzzle en sí mismo).

	Se piden resolver lo siguiente en Prolog:

1)	Dado un determinado puzzle (identificado por el número de nivel), devolver todas las posibles soluciones (combinaciones de valores de todas las entradas) que cumplan con el objetivo.

2)	Dado un determinado puzzle (identificado por el número de nivel) y dados los valores iniciales de todos los datos de entrada (los valores que tienen todos los datos de entrada al comienzo), devolver la solución que tenga la menor cantidad de cambios de valores de las entradas (la menor cantidad de “movimientos” que hay que hacer en las entradas originales para llegar al objetivo).
