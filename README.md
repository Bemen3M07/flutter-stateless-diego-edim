[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/XRrsqZ_g)
# empty

Ejercicio 1
En este ejercicio mostramos una pantalla doe Flutter donde podemos cambiar el mensaje usando dos botones. Al pulsarlos el texto pasa a "Good morning" o "Good night" gracias a setState() que actualiza la interfaz al instante. Hemos organizado los elementos en una columna con espacios y botones con estilo personalizado para que se vea ordenado.

Ejercicio 2
En el ejercicicio 2 utilice un TextField el cual nos permitiera añadir texto y mediante "controller" poder recibir el texto que inserta el usuario para detectar el cambio y con eso mostrar el mensaje en la caja ademas de cambiar el color del fondo para hacer como si apareciera la caja con el recuadro de texto

Ejercicio 3
En este ejercicio hemos utilizado un StatefulWidget que guarda un numero secreto, los intentos y el mensaje como estado interno. Usando un TextEditing Controller y un FocusNode para controlar el campo de texto, limpiarlo y devolver el foco después de cada intento. El número se genera en initState() con _generateNewNumber(), que también resetea intentos y mensaje. Al pulsar “Validar”, _validateGuess() convierte el texto a int, comprueba el valor, actualiza intentos y mensaje dentro de setState() para redibujar la UI. El botón “Nou número” simplemente vuelve a llamar a _generateNewNumber() para reiniciar la partida.

Ejericicio 4
Primero de tenemos un list con las rutas de la imagen de cada dado y seguidamente el mensaje de actualizacion de cuando se pulse el boton que genera en dos variables distintas un numero entre el 0 y el 5 

En la presentacion de la pagina tenemos un fondo a modo de decoracion y seguidamente un If el cual se activa si el valor de las dos variables de dado es el mismo para mostrar una imagen de "jackpot" despues de eso ya tenemos un contedor donde van las imagenes de los dados las cuales muestran el dado en funcion del numero conseguido aleatoriamente

para acabar esta el boton lanzar dados que se encarga de cambiar el valor de la variables 

Ejercicio 5
Este ejercicio funciona creando un StatefulWidget que mantiene dos variables de estado: scoreLeft y scoreRight, cada una representando un marcador independiente. La interfaz muestra ambos valores dentro de un Row, y debajo coloca dos botones que incrementan cada marcador por separado. Cada pulsación ejecuta un setState(), lo que actualiza la UI al instante reflejando el nuevo valor. Todo se organiza con Column y Row para distribuir los elementos de forma sencilla y centrada.

Ejercicio 6
Para empezar primero cree la clase producto el cual requeria de un nombre y la cantidad del producto para luego tenemos los controladores de texto junto con un list de producto para poder almacenar los productos que se vayan añadiendo y en el apartado de los cambios tenemos la creacion del producto con los datos implementados para añadirlo a la lista de productos

En la presentacion tenemos el contenedor con los dos cuadros de texto para poder añadir ahi la informacion del producto parecido al funcionamiento del ejercicio 2 de insertar un mensaje

Fuera del contendor tenemos un "Expanded" que se encarga de ir añadiendo widgets sin tener que ocupar todo el espacio el cual con el "children: productos.map((p) => Card( child: listTile()))" recoremos la lista una por una añadiendo la informacion especificada en los cuadros de texto para mostrar la informacion de los productos

Ejercicio 7
En este ejercicio montamos un contador usando Provider en vez de StatefulWidget. En main() envolvemos la app con un ChangeNotifierProvider que crea una instancia de CounterProvider, nuestra clase que extiende ChangeNotifier, guarda el _counter y llama a notifyListeners() cuando hacemos increment(). En Page1 usamos context.watch() para escuchar cambios y mostrar el valor actualizado, y context.read().increment() en el botón para sumar sin redibujar de más. Así separamos la lógica de estado (Provider) de la UI y dejamos el código más limpio y escalable.

Ejercicio 8

Para el ejercicio 8 dentro de la carpeta Main tenemos pages con las paginas statefull y stateless adaptadas a solo una clase para que pueda funcionar correctametne el navegar entre las paginas

El page 1 y page 2 siguen la misma estructura importando las paginas a las cuales van a aceder cada uno mediante el "MaterialPageRoute" indicamos el projecto y podemos navegar entre los distintos projectos que hemos ido trabajando

