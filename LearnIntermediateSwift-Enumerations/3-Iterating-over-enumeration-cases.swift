// Por defecto, las enumeraciones no son colecciones (como los Arrays o Dictionaries),
// por lo que normalmente no podríamos recorrer sus elementos uno por uno.

// Para poder iterar sobre los casos, le agregamos el protocolo ": CaseIterable"
// justo después del nombre de la enumeración
//           |
enum Vehicle: CaseIterable {
    case truck
    case boat
    case airplane
}

/* Al adoptar 'CaseIterable', Swift nos regala automáticamente una 
   propiedad llamada '.allCases'. Esta propiedad básicamente agrupa 
   todos los casos de nuestro enum y nos los devuelve en forma de un Arreglo.
   
   Como ahora se comporta como un arreglo, ya podemos usar un ciclo 'for' 
   normal para recorrer e imprimir cada uno de los vehículos. */
for vehicle in Vehicle.allCases {
  print(vehicle)
}