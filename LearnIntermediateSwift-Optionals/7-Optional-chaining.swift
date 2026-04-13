var studentGovernment = [
    "president": "Shristi",
    "treasurer": "Diego"
]

/* En Swift, buscar un valor en un Diccionario siempre devuelve un Opcional
   Para acceder a sus propiedades (como .count) de forma segura, usamos el 
   "Optional Chaining" (Encadenamiento Opcional) con el signo '?'
*/

//                                                            | El '?' detiene la cadena si el valor es nil, evitando un crash
if let presidentNameLength = studentGovernment["president"]?.count {
    print("The president's name is \(presidentNameLength) characters long")
} else {
    print("There is no president")
}

//                                                                | Falla silenciosamente, devuelve 'nil' y salta al 'else'
if let vicePresidentNameLength = studentGovernment["vicePresident"]?.count {
    print("The vice president's name is \(vicePresidentNameLength) characters long")
} else {
    print("There is no vice president")
}



/* ¿Cómo funciona la cadena?
   Es común "encadenar" propiedades (ej. variable.propiedad.otraPropiedad)
   Si la variable base es opcional, intentar forzar la cadena con '!' causará 
   un error fatal (crash) si resulta estar vacía
   
   Al usar '?', le decimos a Swift: "Intenta hacer esta cadena, pero si en 
   algún punto te encuentras con un 'nil', detente inmediatamente y devuelve 'nil'"

   
   El resultado siempre es Opcional
   Como el uso de '?' significa que la expresión PODRÍA fallar y devolver 'nil', 
   el resultado de toda la línea se convierte automáticamente en un Opcional
   
   Por eso tu ejercicio es un ejemplo perfecto: 
   Combinaste el Optional Chaining ('?') para conseguir el conteo de forma segura, 
   y el Optional Binding ('if let') para desempacar ese resultado e imprimirlo
*/