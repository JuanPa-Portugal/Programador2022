
## Modulo 1
     Mauro
___
___

## Modulo 2

### Tipos de datos
### variables
          ramiro
          

### Operaciones basicas de entrada y salida 

### Operadores basicos
           Dario
___
___

## Modulo 3

### Valores Booleanos
### Ejecucion condicional
        soledad

### Bucles
        Alvaro
        
###Bucles (ciclos) en el código con while

mientras haya algo que hacer
    hazlo

Toma en cuenta que este registro también declara que, si no hay nada que hacer, nada ocurrirá.
En general, en Python, un bucle se puede representar de la siguiente manera:

while conditional_expression:
    instruction

Si observas algunas similitudes con la instrucción if, está bien. De hecho, la diferencia sintáctica es 
solo una: usa la palabra while en lugar de la palabra if.
La diferencia semántica es más importante: cuando se cumple la condición, if realiza sus sentencias 
sólo una vez; while repite la ejecución siempre que la condición se evalúe como True.

Observa el algoritmo a continuación:

while conditional_expression:
    instruction_one
    instruction_two
    instruction_three
    :
    :
    instruction_n

Ahora, es importante recordar que:
Si deseas ejecutar más de una sentencia dentro de un while, debes (como con if) poner sangría a todas 
las instrucciones de la misma manera.
Una instrucción o conjunto de instrucciones ejecutadas dentro del while se llama el cuerpo del bucle.
Si la condición es False (igual a cero) tan pronto como se compruebe por primera vez, el cuerpo no se 
ejecuta ni una sola vez (ten en cuenta la analogía de no tener que hacer nada si no hay nada que hacer).
El cuerpo debe poder cambiar el valor de la condición, porque si la condición es True al principio, el
cuerpo podría funcionar continuamente hasta el infinito.
        
        
        
### Listas y su procesamiento
        JuanPa
        
### Operaciones Logicas de bit a bit
        Lorena
        Lógica de computadora
        ¿Te has dado cuenta de que las condiciones que hemos utilizado han sido muy simples? Las condiciones que utilizamos en la vida real son mucho mas complejas. Ejemplo:
        -Si tenemos tiempo libre, y el clima es bueno, saldremos a caminar.
        Hemos utilizado la conjuncion and(y), lo que significa que salir a caminar depende del cumplimiento simultanéo de estas dos condiciones. En el lenguaje de la lógica, tal conexion de condiciones se denomina conjunción. Veamos otro ejemplo:
        -Si tu estás en el centro comercial o yo estoy en el centro comercial, uno de nosotros le comprará el regalo a mamá.
        La aparición de la palabra or(o) significa que la compra depende de al menos una de estas condiciones. En lógica, este compuesto se llama una disyuncion. Estos operadores que se utilizan para contruir conjunciones y disyunciones, se llaman operadores lógicos.

        Operador de conjunción: and
        Es un operador binario con una prioridad inferior a la expresada por los operadores de comparación. Nos permite codificar condiciones complejas sin el uso de parentésis: counter > 0 and value ==100
        El resultado proporcionado se puede determinar sobre la base de la tabla de verdad. Si consideramos la conjunción de A and B, el conjunto de valores posibles de argumentos y los valores correspondientes de conjunción se ve de la siguiente manera: (tabla)
        
        Operador de disyuncion: or
        Es un operador binario con una prioridad más baja que and (al igual que + en comparación con *).Su tabla de verdad es la siguiente:(tabla)

        Operador not
        Operador que puede aplicar para condiciones de construcción. Es un operador unario que realiza una negación lógica.Convierte la verdad en falso y lo falso en verdad. Este operador se escribe como la palabra not, y su prioridad es muy alta igual que el unario + y -.Su tabla de verdad es simple: (tabla)

        Expresiones lógicas
        Las siguientes condiciones son equivalentes a pares:
        Ejemplo 1:                    Ejemplo 2:
        print (var > 0)               print (var!=0)
        print (not(var <=0))          print (not(var==0))
        Las leyes de Morgan dicen:
        -La negación de una conjunción es la separación de las negaciones.
        -La negación de una disyunción es la conjunción de las negaciones.
        not (p and q) == (not p) or (not q)
        not (p o q)   ==  (not p) and (not q)
        Ninguno de estos operadores de dos argumentos se puede usar en la forma abreviada op=.

        Valores lógicos frente a bits individuales
        Los operadores lógicos toman sus argumentos como un todo, independientemente de cuantos bits contengan. Los operadores solo conocen el valos cero (cuando todos los bits se reestablecen), significa False; no cero (cuando se establece al menos un bit) significa True. El resultado es False o True. Esto significa que este fragmento de código asignará el valor True a la variable j si i no es cero, de lo contrario será False. 
        i = 1
        j = not not i

        Operadores bit a bit
        Hay cuatro operadores que le permiten manipular bit de datos individuales, se denominan operadores bit a bit. Y un operador adicional xor (significa o exclusivo),y se detona como ^ (signo de intercalación).Aquí estan todos ellos:
        - & (ampersand) conjunción a nivel de bits.
        - | (barra vertical) disyunción a nivel de bits.
        -   (tilde) negación a nivel de bits.
        - ^ (signo de intercalación) o exclusivo a nivel de bits (xor).

        Operadores de bit a bit (&,|,y ^)

        Operaciones de bit a bit ()

        -& requiere exactamente dos 1s para proporcionar 1 como resultado.
        -| requiere al menos 1 para proporcionar 1 como resultado.
        -^ requiere exactamente un 1 para proporcionar 1 como resultado.
        Los argumentos de estos operadores deben ser enteros. Los operadores lógicos no penetran en el nivel de bits de su argumento, solo les interesa el valor entero final. Los operadores bits tratan a cada bit por separado.

        Operaciones lógicas frente a operaciones de bit: diferencia entre operaciones lógica y de bit.
        i = 15
        j = 22
        Si asumimos que los enteros se almacenan con 32 bits, la imagen a nivel de bits de las dos variables será la siguiente:
        (imagen)
        Se ejecuta: log = i and;
        Estamos tratando con una conjunción lógica. Ambas variables i y j no son ceros representan a True. Al consultar la tabla para el operador and, el resultado será True. No se realizan mas operaciones. 
        log = True
        operación al nivel de bits:  bit i & j
        El operador & operará con cada par bits correspondiente por separado.
        i=00000000000000000000000000001111
        j=00000000000000000000000000010110
        bit= i & j =00000000000000000000000000000110
        Estos bits corresponden al valor entero de seis.

        Operadores de negación 
        Lógico: logneg = not i
        La variable logneg se establecerá en False
        Nivel de bits: bitneg=~i
        El valor de la variable bitneg es -16.
        i=00000000000000000000000000001111
        bitneg=~i=111111111111111111111111111110000

        Estos operadores de dos argumentos se pueden utilizar en forma abreviada.
        x = x & y     x & = y
        x = x | y     x | = y
        x = x ^ y     x ^ = y

        ¿Como tratamos a los bits individuales?
        Imagina que debes escribir una pieza importante de un sistema operativo.
        flag_register = 0x1234
        Cada bit de la variable almacena el valor de si/no. El tercer bits es tuyo (los bits se enumeran desde cero el cero es más bajo, mientras que el mas alto es el 31) Los bits restantes no cambian, almacenan datos. Es posible que tengas que hacer frente a las siguientes tareas:
        1-Comprobar el estado de tu bit: usando la siguiente propiedad de conjunción:
        x & 1 = X
        x & 0 = x
        Dicha secuencia de ceros y unos, cuya tarea es tomar el valor o cambiar los bits seleccionados se denomina máscara de bits: 
        if flag_register & the_mask: mi bits se estableció en uno
        else: mi bits se restableció a 0
        2-Reinicia tu bit: asigna un cero al bit, mientras que todos los otros bits deben permanecer sin cambios.
        flag_register=flag_register&~the_mask
        flag_register&=~the_mask
        3-Establece tu bit: asigna 1 a tu bit y todos los bits restantes deben permanecer sin cambios, usa propiedad de disyunción:
        x | 1 = 1
        x | 0 = x
        4-Niega a tu bit: reemplaza un 1 con un 0 y un 0 con un 1.
        x ^ 1 =~x
        x ^ 0 = x 

        Desplazamiento izquierdo binario y desplazamiento derecho binario
        Operación relacionada con bits individuales: shifting. Esto aplica solo a los valores de números entero. Como dos es la base para los números binarios desplaza un valor bit a la izquierda corresponde a multiplicarlo por dos, respectivamente, desplazar un bit a la derecha es como dividir entre dos.
        Los operadores de cambio son una par de dígrafos: << y >>, siguiendo en que dirección actuará el cambio.
        value << bits
        value >> bits
        El argumento izquierdo de estos operadores es una valor entero cuyos bits se desplazan. El argumeto correcto determina el tamaño del turno. La operación no es conmutativa.
        Tabla de prioridades:
        (imagen)
        

___
___
## Modulo 4

### Funciones
      Maria Laura
      
      
### Tuplas
      Romina
      
      
### Diccionarios
      Victoria
      
      
### Excepciones y procesamientos de datos
      Marco Andrada
