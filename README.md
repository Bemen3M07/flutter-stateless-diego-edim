[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/XRrsqZ_g)
# empty

Ejercicio 1

En este ejercicio mostramos una pantalla doe Flutter donde podemos cambiar el mensaje usando dos botones. Al pulsarlos el texto pasa a "Good morning" o "Good night" gracias a setState() que actualiza la interfaz al instante. Hemos organizado los elementos en una columna con espacios y botones con estilo personalizado para que se vea ordenado.

Ejercicio 2 


Ejercicio 3

En este ejercicio hemos utilizado un StatefulWidget que guarda un numero secreto, los intentos y el mensaje como estado interno. Usando un TextEditing Controller y un FocusNode para controlar el campo de texto, limpiarlo y devolver el foco después de cada intento. El número se genera en initState() con _generateNewNumber(), que también resetea intentos y mensaje. Al pulsar “Validar”, _validateGuess() convierte el texto a int, comprueba el valor, actualiza intentos y mensaje dentro de setState() para redibujar la UI. El botón “Nou número” simplemente vuelve a llamar a _generateNewNumber() para reiniciar la partida.

Ejercicio 4


Ejercicio 5

Este ejercicio funciona creando un StatefulWidget que mantiene dos variables de estado: scoreLeft y scoreRight, cada una representando un marcador independiente. La interfaz muestra ambos valores dentro de un Row, y debajo coloca dos botones que incrementan cada marcador por separado. Cada pulsación ejecuta un setState(), lo que actualiza la UI al instante reflejando el nuevo valor. Todo se organiza con Column y Row para distribuir los elementos de forma sencilla y centrada.

Ejercicio 6


Ejercicio 7

En este ejercicio montamos un contador usando Provider en vez de StatefulWidget. En main() envolvemos la app con un ChangeNotifierProvider que crea una instancia de CounterProvider, nuestra clase que extiende ChangeNotifier, guarda el _counter y llama a notifyListeners() cuando hacemos increment(). En Page1 usamos context.watch<CounterProvider>() para escuchar cambios y mostrar el valor actualizado, y context.read<CounterProvider>().increment() en el botón para sumar sin redibujar de más. Así separamos la lógica de estado (Provider) de la UI y dejamos el código más limpio y escalable.

Ejercicio 8

