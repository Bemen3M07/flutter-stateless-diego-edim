[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/XRrsqZ_g)
# empty

Ejercicio 1
En el ejercicio uno lo unico que hicimos fue mover el main_1 dentro del lib junto con los otros main y cambiamos el Hello world por Hola bemen3 para diferenciarnos un poco de los compañeros

Ejercicio 2 
Para el ejercicio 2 unicamente tuvimos que añadir un texto junto a dos botones que para tener el texto y debajo los botones utilizamos el SizedBox(height: 10), que se encargaba de hacer una pequeña separacion entre cada objeto

Ejercicio 3
En el ejercicio 3 creamos la carpeta "assets" y la configuramos el archivo "pubspec.yaml" para que detectara la carpeta junto con su contenido con las siguientes lineas:

assets:
    - assets/

Seguidamente tambien utilizamos indicamos el aliniamiento con la siguiente linea "alignment: Alignment.topLeft" que se encarga de poner los objetos arriba a la izquierda para tenerlo como en la imagen mostrada


Ejercicio 4
Para el ejecicio 4 primero de todo creamos una clase la cual contrendria la informacion que se tendria que ver de contacto que luego dentro del codigo se va llamado 

ademas para poder mostrar la imagen utilizamos "CircleAvatar" que nos permite delimitar un circulo con el espacio que ocupa medianteel "radius" para con el "backgroundImage" poder asignar la imagen y que se tenga de fondo 

Seguidamente utilizamos dentro del recuadro con la informacion "padding: const EdgeInsets.all(16)" para poder crear un margen entre el contendor y en contenido que haya dentro para que el contenido no este pegado a los bordes del contenedor

Ejercicio 5
Primero de todo utilizamos el codigo proporcionado para la selecion aleatoria de nombres y mediante el ItemBuilder nos encargamos de conseguir unos datos aleatorios y crear la carta con la informacion de los datos conseguidos aleatoriamente 

Nuevamente tambien utilizamos el "const EdgeInsets.symmetric(horizontal: 16, vertical: 8)," para poder generar un margen dentro de las targetas y el contenido no este pegado a los contenedores y dentro de la informacion del correo y del telefono justo antes hay un "cons Icons()" que mediante los iconos que tiene de manera nativa flutter les asignamos un icono de una carta y de un telefono para hacerlo como en el ejercicio de muestra

Ejercicio 6
En el ejercicio 6 añadimos el navegador con la linea "floatingActionButtonLocation: FloatingActionButtonLocation.endDocked" para dejar la barra de busqueda siempre abajo aunque se baje la pagina siempre permanezca en esa ubicacion y mediante la linea:

bottomNavigationBar: BottomNavigationBar
          items:

Podemos crear los dinstitntos puntos de busqueda del navegador para interactuar en la pagina aunque no funcione 

