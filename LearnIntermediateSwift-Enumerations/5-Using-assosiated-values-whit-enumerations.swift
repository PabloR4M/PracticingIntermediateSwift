/* En Swift, las enumeraciones pueden almacenar información extra junto con el caso.
   A esto se le llama "Valores Asociados" (Associated Values).
   A diferencia de los rawValues, cada caso puede tener tipos de datos distintos
   y los valores se asignan al momento de crear la variable. 
*/

enum Vehicle {
    //        | Se define poniendo "(nombreDelValor: Tipo)" después del caso
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
}

// Al crear la variable, pasamos el valor asociado que queramos entre paréntesis
let myRide = Vehicle.truck(isFourWheelDrive: true) 


switch myRide {

/* Para extraer y usar el valor asociado dentro del switch, 
   usamos la palabra "let" para crear una constante local
*/
   
//   | Extrae el valor asociado y lo guarda en 'isFourWheelDrive'
case let .truck(isFourWheelDrive): 
    
    // Ahora podemos usar esa constante en nuestra lógica
    if isFourWheelDrive {
        print("Let's go to the mountains")
    } else {
        print("Let's go to the store")
    }

case .boat:
    print("Let's sail to Hawaii")
case .airplane:
    print("Let's fly to Peru")
}

// Raw Values vs Associated Values

/* Raw Values (Valores Crudos): 
   - Todos los casos comparten el mismo tipo de dato (ej. todos String o todos Int). 
   - Sus valores fijos se definen desde que escribes el enum.

   Associated Values (Valores Asociados): 
   - Cada caso puede almacenar tipos diferentes (ej. uno un Bool, otro un Int y String). 
   - Sus valores se definen en el momento en que creas tu variable u objeto.
*/