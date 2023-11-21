Feature: US01 - Como usuario quiero poder registrarme con mi información personal 
Como usuario 
quiero poder registrarme con mi información personal para crear una cuenta y 
acceder a todas las funcionalidades de la plataforma

Scenario: E1: Acceso a la página de registro.
    Dado que el <usuario> se encuentra en el registro de la plataforma Adventours
    Cuando el <usuario> haga clic en el botón <Crear una cuenta>
    Entonces la plataforma le mostrará una nueva ventana donde el <usuario> podrá completar un <formulario de registro>.

    Examples: INPUT
    | usuario |
    Examples: OUTPUT
    | formulario de registro |

Scenario: E2: Registro no exitoso
    Dado que el <usuario> se encuentra en el formulario de registro en la plataforma.
    Cuando el <usuario> complete el formulario con todos sus datos: <Nombres>, <apellidos>, <fecha de nacimiento>, 
    <correo electronico>, <contrasena> y el <usuario> presioné el botón <Crear cuenta>, faltando un sector por completar
    Entonces la aplicación le mostrará una ventana emergente con el siguiente mensaje: <Registro no exitoso>

    Examples: INPUT
    | Nombre | Apellido | Fecha de nacimiento | Correo electronico | Contraseña |
    | Marco | Olivera | 2000 | marcolivera@gmail.com.pe | 9246q46q36|
    Examples: OUTPUT
    | Registro no exitoso |


Scenario: E3: Registro exitoso
    Dado que el <usuario> se encuentra en el formulario de registro en la plataforma.
    Cuando el <usuario> complete el formulario con todos sus datos: <Nombres>, <apellidos>, <fecha de nacimiento>, 
    <correo electronico>, <contrasena> y el <usuario> presioné el botón <Crear cuenta>.
    Entonces la aplicación le mostrará una ventana emergente con el siguiente mensaje: <Se ha registrado con exito en la aplicacion>

     Examples: INPUT
    | Nombre | Apellido | Fecha de nacimiento | Correo electronico | Contraseña |
    | Marco | Olivera | 2000 | marcolivera@gmail.com.pe | 9246q46q36|
    Examples: OUTPUT
    | Se ha registrado con exito en la aplicacion |