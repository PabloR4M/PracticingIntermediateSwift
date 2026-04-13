/* El "Optional Binding" (Enlace Opcional) es la forma más segura y recomendada de desempacar un opcional
   Nos permite comprobar si un opcional tiene un valor válido y, si lo tiene, guardarlo 
   inmediatamente en una nueva constante normal (no opcional), todo en un solo paso
*/

var firstName = "Pablo"
var lastName = "Ramos"

var suffix: String? = "Mr. "
suffix = nil

/* Para hacer el Optional Binding usamos la estructura "if let"
   Si 'suffix' tiene un valor, se crea la constante 'nonOptionalErrorMessage' con ese valor
   y se ejecuta el bloque del 'if'. Si es 'nil', la constante no se crea y se salta al 'else'
*/

//   | Crea la constante temporal solo si 'suffix' NO es nulo
if let nonOptionalErrorMessage = suffix {
    print("Hello, \(firstName) \(lastName) \(nonOptionalErrorMessage)")
} else {
    print("Hello, \(firstName) \(lastName)")
}



/* En el código se uso un nombre nuevo ('nonOptionalErrorMessage') para la constante
   Esto funciona perfecto, pero en Swift es una práctica MUY común usar EXACTAMENTE 
   el mismo nombre para la constante temporal y para el opcional original
   A esta técnica se le llama "Shadowing":
   
   if let suffix = suffix {
       // Aquí adentro, 'suffix' ya no es el opcional, es un String normal 100% seguro.
       print("Hello, \(firstName) \(lastName) \(suffix)")
   }
   
   La gran ventaja de hacer esto es que no tienes que inventar nombres larguísimos 
   o redundantes cada vez que necesites desempacar un valor
*/