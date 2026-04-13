/* Para usar el valor real que está dentro de un opcional, primero debemos "desempacarlo" (unwrap)
   Si intentamos hacer una operación matemática directa entre un valor normal y un opcional, Swift marcará error
   
   La forma más directa de hacerlo es el "Force Unwrapping" (Desempaquetado Forzado)
*/

var flightDistance: Int = 1000

//   | Definimos nuestra variable como un Entero Opcional y le asignamos un valor
var connectingFlightDistance: Int? = 2000


/* ¡CUIDADO! Si hacemos Force Unwrapping a un opcional que vale 'nil', la aplicación se cierra de golpe (Crash / Fatal Error)
   Por seguridad, siempre debemos comprobar primero que la variable NO sea nula (!= nil) usando un 'if'
*/

//   | Verificamos que el opcional contenga algún valor antes de intentar abrirlo
if connectingFlightDistance != nil {
    
    //   | Usamos el '!' para extraer a la fuerza el valor (2000) y poder sumarlo con un Int normal
    let totalFlightDistance = flightDistance + connectingFlightDistance!
    
    print(totalFlightDistance)
}


// analogía de la caja

/* Entender los opcionales es mucho más fácil si se imagina que son una caja:
   Puede que adentro haya un dato, o puede que la caja esté vacía (nil)
   
   - Usar la variable con '?' es tener la caja cerrada en tus manos
   - Usar el '!' (Force Unwrap) es destrozar la caja a la fuerza asumiendo que hay algo adentro
     Si la caja estaba vacía y haces esto, el programa choca
   - Usar el 'if variable != nil' es como agitar la caja primero para asegurarte de que 
     suena algo adentro, y solo entonces te atreves a abrirla a la fuerza con el '!'
*/