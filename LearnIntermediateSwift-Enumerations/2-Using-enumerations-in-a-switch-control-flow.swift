
enum Vehicle {
    case airplane
    case boat
    case truck
}

var myRide = Vehicle.truck

// Los "switch" son ideales para trabajar con enumeraciones.
// Evalúan el valor de la variable (myRide) y ejecutan el caso que coincida.
switch myRide {

  /* al usamos un switch con un enum, debe ser "exhaustivo".
     Esto significa que obligatoriamente debemos escribir un 'case'
     para cada uno de los tipos definidos en la enumeracion */
  case .airplane:
    print("Let's fly to Peru")
    
  case .boat:
    print("Let's sail to Hawaii")
    
  case .truck:
    print("Let's drive to the store")
    
  /* el enum limita las opciones estrictamente a esas tres,
     Swift sabe que no puede existir otro valor inesperado. 
     Por lo tanto no es necesario agregar un caso "default" al final
     Esto hace el código más seguro y fácil de leer */
}