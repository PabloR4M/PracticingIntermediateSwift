/* En Swift, las enumeraciones pueden tener un "valor base" o "valor crudo" (raw value) 
   asignado a cada caso. Pueden ser Strings, Characters, Ints, etc
   Solo se permite un tipode valor crudo por enum
   
            | Se define poniendo ": Tipo" después del nombre del enum  */
enum Vehicle: Character {
    // Asignamos el valor crudo usando el signo "="
    case truck = "T"
    case boat = "B"
    case airplane = "A"
}

// Para leer o acceder al valor crudo de un caso específico usamos la propiedad ".rawValue"
print(Vehicle.airplane.rawValue) 

/* También podemos hacer lo inverso: crear una variable dándole el valor crudo.
   Esto devuelve un tipo de dato "Opcional" (indicado con un '?') 
   Porque si le pasamos un valor que no existe (ej. rawValue: "Z"), 
   el programa no choca, sino que devuelve 'nil' (nulo o vacío) */
let myBoat = Vehicle(rawValue: "B")


// el rawValue se puede definir implicitamente tambieny funciona 
// diferente segun el tipo de dato:

/* valores implicitos Int
   Si usamos Int y le damos un valor al primer caso, Swift 
   le asigna automáticamente los números siguientes a los demás casos
   
   enum Team: Int {
       case alpha = 1
       case bravo      // Swift infiere que es 2
       case charlie    // Swift infiere que es 3
       case delta      // Swift infiere que es 4
   }
*/

/* valores implicitos String
   Si usamos String pero no le asignamos valores con "=", Swift usará 
   exactamente el mismo nombre del 'case' convertido a texto.
   
   enum Status: String {
       case complete   // Su rawValue será "complete"
       case pending    // Su rawValue será "pending"
       case rejected   // Su rawValue será "rejected"
   }
*/