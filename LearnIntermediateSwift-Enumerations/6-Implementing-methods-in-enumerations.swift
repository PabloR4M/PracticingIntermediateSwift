/* En Swift, las enumeraciones pueden tener sus propios métodos (funciones internas).
   Si un método necesita modificar el valor actual de la enumeración, 
   debe usar la palabra clave "mutating".
   Dentro del método, usamos "self" para referirnos a la instancia actual y poder cambiarla. 
*/

enum Vehicle {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
    
    //   | La palabra 'mutating' indica que esta función cambiará el valor de la instancia
    mutating func goOffRoad() {
        //    | 'self' es la variable actual. Aquí le asignamos un nuevo caso y valor si se llama el metodo
        self = .truck(isFourWheelDrive: true)
    }
}

/* Para poder usar un método 'mutating', la instancia 
   debe ser creada como una variable
*/

//   | Creamos la variable con un valor inicial
var myRide = Vehicle.airplane

//   | Llamamos al método. Al ejecutarse, cambiará el valor interno de 'myRide'
myRide.goOffRoad()

// Comprobamos el nuevo contenido de myRide
print(myRide) // Imprimirá: truck(isFourWheelDrive: true)