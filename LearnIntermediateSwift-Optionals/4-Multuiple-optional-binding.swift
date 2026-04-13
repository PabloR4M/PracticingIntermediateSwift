/* Cuando tenemos varios opcionales que desempacar, usar muchos "if let" anidados
   crea una estructura difícil de leer
   Para evitarlo, Swift permite hacer múltiples "Optional Bindings" en un solo 'if let',
   separándolos por comas
*/

var language = "Swift"
var firstRelease: Int? = 2014
var website: String? = "swift.org"
var designer: String? = "Chris Lattner"
var shouldDisplayMessage = true


//   | Separamos cada desempaquetado (let) y la condición booleana con una coma
if let firstRelease = firstRelease, 
   let website = website, 
   let designer = designer, 
   shouldDisplayMessage {
      
      //   | Las triples comillas (""") permiten crear Strings de varias líneas fácilmente
      let message = 
          """
          \(language) was first released in \(firstRelease).  
          Its website can be found at \(website).
          It was designed by \(designer).
          """
      print(message)
}



/* ¿Qué es la Pirámide de la Perdición (Pyramid of Doom)?
   Es cuando tu código se va empujando cada vez más hacia la derecha debido a 
   múltiples 'if' o ciclos anidados, pareciendo una pirámide de lado. Es una mala práctica 
   porque hace que el código sea muy confuso de leer y difícil de mantener


   Saltos de línea en un 'if let' múltiple:
   Como aplicaste muy bien en el ejercicio, cuando tienes muchos bindings en un solo 'if let',
   la línea de código se puede volver larguísima. Swift permite dar un salto de línea 
   después de cada coma para que todo quede ordenado hacia abajo y súper legible
*/