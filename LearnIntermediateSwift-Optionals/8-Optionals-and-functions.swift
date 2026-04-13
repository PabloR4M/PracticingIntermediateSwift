let words = ["optionals", nil, "are", "great", nil, "at", "handling", nil, "values"]

//   | 'arr' recibe un arreglo con opcionales [String?] y retorna un Opcional 'Int?'
func firstIndex(of target: String, in arr: [String?]) -> Int? {
    
    //   | .indices es un atajo. En vez de escribir '0..<arr.count', esto te da el rango exacto (ej. del 0 al 8)
    for i in arr.indices {
        
        //   |'arr[i]' puede ser un String o nil
        //   | El 'guard let' lo desempaca de forma segura y además verifica si es igual a 'target'
        //   | Si resulta ser 'nil' o no es la palabra, 'continue' salta a la siguiente vuelta del for
        guard let value = arr[i], value == target else { continue }
        
        //   | Si pasó el guard (sí era un String y era la palabra correcta), regresa el índice
        return i
    }
    
    //   | Si terminó todo el for y nunca encontró la palabra, regresa 'nil'
    return nil
}

//   | Como la función devuelve un Int?, usamos 'if let' para abrirlo de forma segura
if let greatIndex = firstIndex(of: "great", in: words) {
  print(greatIndex)
}

if let badIndex = firstIndex(of: "bad", in: words) {
  print(badIndex)
} else {
  print("words does not contain the string 'bad'")
}




/* A veces es difícil verlos cuando todo está junto, pero en este código 
   los opcionales son los protagonistas absolutos en 4 lugares diferentes:

   1. En los datos de entrada: El arreglo 'words' tiene textos y 'nil' revueltos [String?].
   2. En la firma de la función: La flecha devuelve un 'Int?' porque cabe la 
      posibilidad de que la palabra no exista, y si no existe, devuelve 'nil'.
   3. Dentro del ciclo (El desempaquetado): Usamos 'guard let' porque al intentar 
      leer 'arr[i]', podríamos toparnos con uno de esos 'nil' del arreglo original.
   4. Al llamar a la función (La verificación): Como 'firstIndex' te va a 
      devolver un 'Int?', usamos 'if let' para verificar si sí encontró un número 
      (como con "great") o si devolvió 'nil' (como con "bad").
*/