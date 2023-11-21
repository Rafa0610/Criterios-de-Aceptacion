Feature: US02 - Como usuario quiero poder iniciar sesión en la plataforma 
Como usuario 
quiero poder iniciar sesión en la plataforma para acceder de manera segura a 
mi cuenta y personalizar mi experiencia.

Scenario: E1: Acceso al inicio de sesión
    Dado que el <usuario> se encuentra en el inicio de sesion de la plataforma Adventours
    Cuando el <usuario> haga clic en el botón <Iniciar sesion>
    Entonces la plataforma le mostrará una nueva ventana donde el <usuario> podrá ingresar 
    su <correo electronico> y <contrasena> creada previamente en la creación de cuenta.

     Examples: INPUT
    | usuario |

Scenario: E2: Inicio de sesión exitoso
    Dado que el <usuario> se encuentre en la página de Inicio de sesion
    Cuando el <usuario> haya proporcionado los datos correctos: <correo electronico> y <contrasena>. Y presione el botón de <Continuar>
    Entonces la plataforma le redireccionará a la pagina principal de la aplicación.

     Examples: INPUT
    | Correo electronico | Contraseña |
    | marcolivera@gmail.com.pe | 9246q46q36|


Scenario: E3: Inicio de sesión fallido
    Dado que el <usuario> se encuentre en la página de Inicio de sesion
    Cuando el <usuario> ingresa incorrectamente los datos, ya sea el <correo electronico> o la <contrasena>, y luego presiona el botón de <Continuar>
    Entonces la plataforma le sombreara de <color rojo el inicio de sesion>.

     Examples: INPUT
    | Correo electronico | Contraseña |
    | marcolivera@gmail.com.pe | 9246q46q36|
    Examples: OUTPUT
    | color rojo el inicio de sesion |