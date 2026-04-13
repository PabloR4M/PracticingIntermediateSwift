func runProgram() {
  let language = "Swift"
  let firstRelease: Int? = 2014
  let website: String? = "swift.org"
  let designer: String? = "Chris Lattner"
  let shouldDisplayMessage = true

  /* Aquí usamos 'guard' como el "cadenero" de la función
     Si falta algún dato o shouldDisplayMessage es falso, 
     cancelamos y salimos de la función inmediatamente
  */
  
  //    | Desempaquetamos múltiples opcionales y verificamos el booleano
  guard let unwrappedRelease = firstRelease, 
        let unwrappedWebsite = website, 
        let unwrappedDesigner = designer, 
        shouldDisplayMessage else {
          
          // | Si algo de arriba falla (es nil o false), salimos de la función
          return
        }
        
        /* Como pasamos la validación, las constantes 'unwrapped...' están 
           disponibles para usarse de forma limpia y sin anidar más código
        */
        let message = 
            """
            \(language) was first released in \(unwrappedRelease).  
            Its website can be found at \(unwrappedWebsite).
            It was designed by \(unwrappedDesigner).
            """
        print(message)
}

runProgram()




/* truco de "Shadowing" 
   En lugar de inventar nombres nuevos como 
   'unwrappedRelease', en Swift suelen reusar el mismo nombre:
   
   guard let firstRelease = firstRelease, 
         let website = website, 
         let designer = designer, 
         shouldDisplayMessage else { return }
         
   print("\(language) was first released in \(firstRelease).")
*/