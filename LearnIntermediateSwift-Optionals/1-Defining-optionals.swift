/* En Swift, a veces la información no existe o falta (como cuando alguien no tiene segundo nombre)
   Para manejar esto de forma segura existen los "Opcionales"
   
   Un opcional representa una variable que puede tener un valor válido, o puede no tener nada
   Esa "ausencia de valor" o vacío en Swift se representa con la palabra clave 'nil'
*/

//   | Se define un opcional agregando un signo de interrogación '?' justo después del tipo de dato
var hatColor: String?

/* Si no le asignamos un valor inicial, el opcional vale 'nil' por defecto
   Sin embargo, podemos asignarle un valor normal como a cualquier otra variable
*/

//   | Asignamos un valor válido (en este caso un String)
hatColor = "blue"

//   | Podemos volver a vaciar la variable en cualquier momento asignándole 'nil'
//   | NOTA: Los opcionales son el ÚNICO tipo de dato en Swift que acepta 'nil'
hatColor = nil

// Comprobamos el valor actual de hatColor
print(hatColor) // Imprimirá: nil



// Variables Normales vs Opcionales

/* Las variables normales NUNCA pueden estar vacías
   Si intentas hacer esto con una variable que no tiene el '?':
   
   var firstName: String = "George"
   firstName = nil // ERROR: El programa chocará y no compilará

   ¿Qué pasa si imprimes un opcional que SÍ tiene valor?
   Si imprimes 'hatColor' cuando vale "blue", la consola no mostrará solo "blue", 
   sino que mostrará: Optional("blue")
   Swift "envuelve" el valor en una caja protectora
*/