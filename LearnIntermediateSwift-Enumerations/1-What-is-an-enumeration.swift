// Las enumeraciones son similares a las clases
// Sirve por ejemplo para agrupar variables en una categoria

//Se definen con enum para la categoria general y case para los tipos
enum Vehicle{
  case airplane, boat, truck

  /* Tambien puede ser definidos los tipos como

  case airplane
  clase boat
  clase truck
  */
}

// Al definir una variable o contante se le debe asignar la categoria y el tipo
var myRide = Vehicle.truck

/* Si ya definimos con anterioridad la categoria de una variable
 esta la tendra presente por lo que para cambiar la variable de tipo
 dentro de la misma categoria no ahce falta volver a nombrar la categoria*/
 myRide = .airplane
