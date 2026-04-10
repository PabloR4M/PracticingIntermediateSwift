/* las enumeraciones pueden tener "Propiedades Computadas" (Computed Properties).
   A diferencia de una variable normal que simplemente almacena un dato, 
   una propiedad computada calcula y devuelve un valor cada vez que la llamas.
   Puede retornar cualquier tipo de dato y no requiere que el enum tenga rawValues.
*/

enum Vehicle {
    case airplane
    case boat
    case truck(isFourWheelDrive: Bool)
    
    //   | Se define con 'var', el nombre de la propiedad, y el tipo de dato que va a retornar
    var description: String {
        
        //   | Usamos un 'switch' evaluando 'self' para calcular qué devolver según el caso actual
        switch self {
        case .airplane:
            return "This is an airplane"
            
        case .boat:
            return "This is a boat"
            
        //   | Extraemos el valor asociado con 'let' para utilizarlo en el cálculo
        case let .truck(isFourWheelDrive):
            return "This is a truck" + (isFourWheelDrive ? " with four wheel drive" : "")
        }
    }
}
 
//   | Instanciamos la constante asignándole el caso y su valor asociado
let myRide = Vehicle.truck(isFourWheelDrive: true)

//   | Accedemos a la propiedad computada usando simplemente un punto (.)
print(myRide.description)



// El operador ternario en el String, aqui aprovechamos lecciones pasadas para acortar y ahcer mas legible el codigo