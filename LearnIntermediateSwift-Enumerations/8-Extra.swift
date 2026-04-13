
// Temas Avanzados de Enumeraciones=


// Pattern Matching
/* Evaluar un solo caso con "if case" 
   Si se tiene un enum con valores asociados, pero en un momento dado 
   solo interesa comprobar un caso específico, escribir un 'switch' 
   completo con todos los casos puede ser mucho código innecesario
   Para eso es 'if case let'
*/

let myVehicle = Vehicle.truck(isFourWheelDrive: true)

//   | 'if case let' comprueba el caso y extrae el valor asociado en una sola línea
//   | Si 'myVehicle' no fuera un truck, simplemente se salta el 'if' (no choca)
if case let .truck(has4x4) = myVehicle {
    print("Solo me importaba saber si era un camión. ¿Tiene 4x4?: \(has4x4)")
}


// Enumeraciones Recursivas - Indirect enum
/* Hay casos muy específicos (como al crear árboles de datos o fórmulas matemáticas) 
   donde un caso necesita guardar como valor asociado a OTRA instancia de su mismo enum
   Para que Swift permita esto en la memoria, usamos la palabra "indirect"
*/

//   | 'indirect' avisa a Swift que este enum puede contenerse a sí mismo
indirect enum MathExpression {
    case number(Int)
    
    //   | Este caso guarda dos expresiones matemáticas dentro de sí mismo
    case addition(MathExpression, MathExpression) 
}