Feature: US03 - Como turista, quiero ingresar mis preferencias de viaje
Como turista, quiero ingresar mis preferencias de viaje, como mis intereses en cultura, 
deportes y gastronomía, para recibir recomendaciones de actividades y destinos que se adapten a mis gustos.

Scenario: E1: Ingreso a la sección Recomendaciones
    Dado que el <usuario> desea ingresar sus preferencias para recomendaciones
    Cuando el <usuario> esté en el menu principal
    Y presione la opción <Recomendaciones>
    Entonces se le llevará al apartado de recomendaciones con un <cuestionario> en la cual puede ingresar sus <gustos> y <preferencias>

     Examples: INPUT
    | usuario |
    Examples: OUTPUT
    | cuestionario |

Scenario: E2: Recibir una recomendación
    Dado que el <usuario> ha filtrado sus preferencia mediante el cuestionario,ingresando sus <gustos> y <preferencias>
    Cuando el <usuario> haga click en el botón <enviar>
    Entonces se generará unas <recomendaciones basadas en su preferencias>
    Y se guardará su información seleccionada.

     Examples: INPUT
    | Gustos | Preferencias |
    | Calor | Deportes Extremos |
    Examples: OUTPUT
    | recomendaciones basadas en su preferencias | 
