Feature: US08 - Como usuario, deseo tener la capacidad de brindar una valoración al servicio 
Como usuario
deseo tener la capacidad de brindar una valoración al servicio que me brindan para que futuros 
turistas tomen mejores decisiones al viajar a Perú.

Scenario: E1: Ingreso servicios
    Dado que el <usuario> está en el apartado de servicios en la plataforma
    Cuando el <usuario> haga clic en el botón <Puntuacion de viajes>
    Entonces la plataforma le mostrará una nueva ventana donde el <usuario> tendrá la posibilidad de ver 
    las <puntuaciones correspondientes>.

     Examples: INPUT
    | usuario |
    Examples: OUTPUT
    | puntuaciones correspondientes |

Scenario: E2: Calificación de viaje
    Dado que el <usuario> se encuentre en el apartado de puntuacion de viajes
    Cuando el <usuario> haya realizado la <puntuacion> correspondiente dentro del apartado
    Entonces aparecerá un botón para poder <guardar>

     Examples: INPUT
    | puntuacion |
    | 10/10 |
    Examples: OUTPUT
    | guardar |

Scenario: E3: Guardado correctamente
    Dado que el <usuario> se encuentre en calificacion y realizó su puntuacion.
    Cuando el <usuario> ingresa correctamente la <puntuacion>, entonces presiona el botón de <calificar>
    Entonces aparecer un mensaje indicando <guardado>

     Examples: INPUT
    | puntuacion |
    | 08/10 |
    Examples: OUTPUT
    | guardado |

Scenario: E4: Guardado fallido
    Dado que el <usuario> se encuentre en configuracion y terminó de hacer los cambios
    Cuando el <usuario> ingresa <incorrectamente la calificacion>, en el apartado de calificacion.
    Entonces aparecer un mensaje indicando <guardado fallido>

     Examples: INPUT
    | puntuacion |
    | ab/10 |
    Examples: OUTPUT
    | guardado fallido |