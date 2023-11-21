Feature: US06 - Como turista extranjero, quiero recibir sugerencias de alojamiento 
Como turista extranjero
quiero recibir sugerencias de alojamiento que se adapten a mi presupuesto y preferencias de viaje, 
para considerar opciones como hoteles en el centro de la ciudad u hospedajes económicos.

Scenario: E1: Búsqueda de Servicios
    Dado que el <usuario> ha iniciado sesión en AdvenTours.
    Cuando el <usuario> hace clic en la opción <Recomendacion de servicios>.
    Entonces la plataforma muestra una lista de sugerencias de <alojamiento>, <restaurantes> y <paquetes turisticos> 
    disponibles en el destino, filtradas por preferencias de <presupuesto> y <lugar>.
    
     Examples: INPUT
    | usuario | presupuesto | lugar |
    | usuario | $1000 | Cuzco |
    Examples: OUTPUT
    | alojamiento | restaurantes | paquetes turisticos |
    | Hotel Cuzco | 7 Sabores | 5 dias y 4 noches |

Scenario: E2: Filtros de Búsqueda Personalizados
    Dado que el <usuario> está buscando alojamiento en AdvenTours.
    Cuando el <usuario> utiliza filtros de búsqueda para especificar sus preferencias, como <presupuesto> y <lugar>.
    Entonces la plataforma refina las recomendaciones y muestra <opciones de alojamiento> que se ajusten a sus criterios.

     Examples: INPUT
    | presupuesto | lugar |
    | $1000 | centro de Cuzco |
    Examples: OUTPUT
    | opciones de alojamiento|
    | Hotel Sheraton Cuszqueño | 
    

Scenario: E3: Visualización de Detalles de Alojamiento
    Dado que el <usuario> ha seleccionado un alojamiento de interés.
    Cuando el <usuario> hace clic en <este alojamiento>.
    Entonces la plataforma muestra <informacion detallada sobre el alojamiento>, incluyendo <tarifas>, <ubicacion en el mapa>, 
    <comodidades> y <resenas de otros viajeros>.
    
     Examples: INPUT
    
    Examples: OUTPUT
    | informacion detallada sobre el alojamiento | tarifas | ubicacion en el mapa | comodidades | reseñas de otros viajeros |
    | $50 el día | centro de Cuzco | suit presidencial | excelente servicio y comodidades aseguradas |