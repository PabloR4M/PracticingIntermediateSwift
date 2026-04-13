/* El "Operador Nil-Coalescing" (Operador de Fusión Nil) es una forma rápida 
   y limpia de manejar opcionales en una sola línea
   Sirve para proporcionar un "Valor por Defecto" (fallback) en caso de que 
   el opcional resulte estar vacío ('nil')
*/

var favoriteFood: String?

//   | Usamos '??' seguido del valor que queremos usar si la variable es nula
print(favoriteFood ?? "No Favorite Food")



/* Su sintaxis básica es: opcional ?? valorPorDefecto
   
   - Si el opcional NO es nulo: Lo desempaca de forma segura automáticamente 
     y usa su valor real
   - Si el opcional SÍ es nulo: Usa el valor por defecto de la derecha
   
   REGLA IMPORTANTE: El valor por defecto DEBE ser del mismo tipo de dato
   (Si tu opcional es un Int?, el default debe ser un número; si es String?, un texto)
*/

// Ejemplo 1: El opcional SÍ tiene un valor
var userLocation: String? = "Home"

//   | Como no es nulo, 'displayedLocation' guarda "Home" (ya desempaquetado)
let displayedLocation = userLocation ?? "Unknown" 


// Ejemplo 2: El opcional NO tiene valor
var secondUserLocation: String? // Al no asignarle nada, vale 'nil'

//   | Al ser nulo, salta al valor por defecto y guarda "Unknown"
let secondDisplayedLocation = secondUserLocation ?? "Unknown"