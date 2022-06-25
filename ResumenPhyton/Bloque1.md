
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
        Bucles (ciclos) en el código con while
        mientras haya algo que hacer
        hazlo

       Toma en cuenta que este registro también declara que, si no hay nada que hacer, nada ocurrirá.
         En general, en Python, un bucle se puede representar de la siguiente manera:

        while conditional_expression:
        instruction

        Si observas algunas similitudes con la instrucción if, está bien. De hecho, la       diferencia sintáctica es solo una: usa la palabra while en lugar de la palabra if.
        La diferencia semántica es más importante: cuando se cumple la condición, if realiza  sus sentencias sólo una vez; while repite la ejecución siempre que la condición se evalúe como True.

        Observa el algoritmo a continuación:

        while conditional_expression:
        instruction_one
        instruction_two
        instruction_three
        :
        :
        instruction_n

        Ahora, es importante recordar que:
        Si deseas ejecutar más de una sentencia dentro de un while, debes (como con if) poner sangría a todas las instrucciones de la misma manera.
        Una instrucción o conjunto de instrucciones ejecutadas dentro del while se llama el   cuerpo del bucle.
        Si la condición es False (igual a cero) tan pronto como se compruebe por primera vez,  el cuerpo no se ejecuta ni una sola vez (ten en cuenta la analogía de no tener que hacer nada si no hay nada que hacer).
        El cuerpo debe poder cambiar el valor de la condición, porque si la condición es True al principio, el cuerpo podría funcionar continuamente hasta el infinito.
        
        Un Bucle Infinito

        Un bucle infinito, también denominado bucle sin fin, es una secuencia de instrucciones en un programa que se repite indefinidamente (bucle sin fin).
        Este es un ejemplo de un bucle que no puede finalizar su ejecución:

        while True:
        print("Estoy atrapado dentro de un bucle.")

        Este bucle imprimirá infinitamente "Estoy atrapado dentro de un bucle". En la         pantalla.
        Volvamos al bosquejo del algoritmo que te mostramos recientemente. Te mostraremos     como usar este bucle recién aprendido para encontrar el número más grande de un gran         conjunto de datos ingresados.
        Analiza el programa cuidadosamente. Localiza donde comienza el bucle (línea 8) y      descubre como se sale del cuerpo del bucle:

        Almacena el actual número más grande aquí.
        largest_number = -999999999

        Ingresa el primer valor.
        number = int(input("Introduce un número o escribe -1 para detener: "))

        Si el número no es igual a -1, continuaremos
        while number != -1:
        ¿Es el número más grande que el valor de largest_number?
        if number > largest_number:
        Sí si, se actualiza largest_number.
        largest_number = number
        Ingresa el siguiente número.
        number = int(input("Introduce un número o escribe -1 para detener: "))

        Imprime el número más grande
        print("El número más grande es:", largest_number)

        Bucles en tu código con for

        Otro tipo de bucle disponible en Python proviene de la observación de que a veces es más importante contar los "giros o vueltas" del bucle que verificar las condiciones.
        Imagina que el cuerpo de un bucle debe ejecutarse exactamente cien veces. Si deseas   utilizar el bucle while para hacerlo, puede tener este aspecto:

       i = 0
       while i < 100:
       do_something()
      i += 1

      Sería bueno si alguien pudiera hacer esta cuenta aburrida por ti. ¿Es eso posible?
      Por supuesto que lo es, hay un bucle especial para este tipo de tareas, y se llama for.
      Echa un vistazo al fragmento:

      for i in range(100):
      do_something()
      pass

      La palabra reservada for abre el bucle for; nota - No hay condición después de eso; no tienes que pensar en las condiciones, ya que se verifican internamente, sin ninguna intervención.
      Cualquier variable después de la palabra reservada for es la variable de control del   bucle; cuenta los giros del bucle y lo hace automáticamente.
      La palabra reservada in introduce un elemento de sintaxis que describe el rango de      valores posibles que se asignan a la variable de control.
      La función range() (esta es una función muy especial) es responsable de generar todos   los valores deseados de la variable de control; en nuestro ejemplo, la función creará         (incluso podemos decir que alimentará el bucle con) valores subsiguientes del siguiente       conjunto: 0, 1, 2 .. 97, 98, 99; En este caso, la función range() comienza su trabajo         desde 0 y lo finaliza un paso (un número entero) antes del valor de su argumento.
      La palabra clave pass dentro del cuerpo del bucle - no hace nada en absoluto; es una    instrucción vacía : la colocamos aquí porque la sintaxis del bucle for exige al menos una instrucción dentro del cuerpo (por cierto, if, elif, else y while expresan lo mismo).
      Echa un vistazo al fragmento de abajo. ¿Puedes predecir su salida?

     for i in range(10):
     print("El valor de i es actualmente", i)

     El bucle se ha ejecutado diez veces (es el argumento de la función range()).
     El valor de la última variable de control es 9 (no 10, ya que comienza desde 0 , no   desde 1).
     La invocación de la función range() puede estar equipada con dos argumentos, no solo uno:

     for i in range(2, 8):
     print("El valor de i es actualmente", i)

     En este caso, el primer argumento determina el valor inicial (primero) de la variable de control.
     El último argumento muestra el primer valor que no se asignará a la variable de control.
     La función range() solo acepta enteros como argumentos y genera secuencias de enteros.
     El primer valor mostrado es 2 (tomado del primer argumento de range()).
     El último es 7 (aunque el segundo argumento de range() es 8).

     Más sobre el bucle for y la función range() con tres argumentos

     La función range() también puede aceptar tres argumentos.
     El tercer argumento es un incremento: es un valor agregado para controlar la variable en cada giro del bucle (como puedes sospechar, el valor predeterminado del incremento es 1).

     for i in range(2, 8, 3):
     print("El valor de i es actualmente", i)

     El primer argumento pasado a la función range() nos dice cual es el número de inicio de la secuencia (por lo tanto, 2 en la salida). El segundo argumento le dice a la función        dónde detener la secuencia (la función genera números hasta el número indicado por el        segundo argumento, pero no lo incluye). 
     Finalmente, el tercer argumento indica el paso, que en realidad significa la diferencia  entre cada número en la secuencia de números generados por la función.
     Si el conjunto generado por la función range() está vacío, el bucle no ejecutará su     cuerpo en absoluto.
     Al igual que aquí, no habrá salida:

     for i in range(1, 1):
     print("El valor de i es actualmente", i)

     El conjunto generado por range() debe ordenarse en un orden ascendente. No hay forma de forzar el range() para crear un conjunto en una forma diferente. Esto significa que el        segundo argumento de range() debe ser mayor que el primero.
     Por lo tanto, tampoco habrá salida aquí:

     for i in range(2, 1):
     print("El valor de i es actualmente", i)
   
     Las sentencias break y continue

     Hasta ahora, hemos tratado el cuerpo del bucle como una secuencia indivisible e inseparable de instrucciones que se realizan completamente en cada giro del bucle. Sin embargo, como esarrollador, podrías enfrentar las siguientes opciones:

     Parece que no es necesario continuar el bucle en su totalidad; se debe abstener de seguir ejecutando el cuerpo del bucle e ir más allá.
     Parece que necesitas comenzar el siguiente giro del bucle sin completar la ejecución del turno actual.
     Python proporciona dos instrucciones especiales para la implementación de estas dos tareas. Digamos por razones de precisión que su existencia en el lenguaje no es necesaria: un programador experimentado puede codificar cualquier algoritmo sin estas instrucciones. Tales adiciones, que no mejoran el poder expresivo del lenguaje, sino que solo simplifican el trabajo del desarrollador, a veces se denominan dulces sintácticos o azúcar sintáctica.
     Estas dos instrucciones son:

     break: sale del bucle inmediatamente, e incondicionalmente termina la operación del bucle; el programa comienza a ejecutar la instrucción más cercana después del cuerpo del bucle.
     continue: se comporta como si el programa hubiera llegado repentinamente al final del cuerpo; el siguiente turno se inicia y la expresión de condición se prueba de inmediato.
     Ambas palabras son palabras clave reservadas.
     Ejemplo:

     break - ejemplo

     print("La instrucción break:")
     for i in range(1, 6):
     if i == 3:
        break
    print("Dentro del bucle.", i)
    print("Fuera del bucle.")


    continue - ejemplo

     print("\nLa instrucción continue:")
     for i in range(1, 6):
        if i == 3:
        continue
    print("Dentro del bucle.", i)
    print("Fuera del bucle.")

    El bucle while y la rama else

    Ambos bucles while y for, tienen una característica interesante (y rara vez se usa).

     i = 1
     while i < 5:
      print(i)
      i += 1
     else:
      print("else:", i)

     Como pudiste haber sospechado, los bucles también pueden tener la rama else, como los if.
     La rama else del bucle siempre se ejecuta una vez, independientemente de si el bucle ha entrado o no en su cuerpo.
     Modifica el fragmento un poco para que el bucle no tenga oportunidad de ejecutar su cuerpo ni una sola vez:

     i = 5
     while i < 5:
      print(i)
      i += 1
     else:
      print("else:", i)
	
     El estado del while es False al principio.

     El bucle for y la rama else

     Los bucles for se comportan de manera un poco diferente.

     for i in range(5):
       print(i)
     else:
       print("else:", i)
	
     La variable i conserva su último valor.
     Modifica el código un poco para realizar un experimento más.

     i = 111
     for i in range(2, 1):
       print(i)
     else:
       print("else:", i)

     El cuerpo del bucle no se ejecutará aquí en absoluto. Hemos asignado la variable i antes del bucle.
     Cuando el cuerpo del bucle no se ejecuta, la variable de control conserva el valor que tenía antes del bucle.
     Si la variable de control no existe antes de que comience el bucle, no existirá cuando la ejecución llegue a la rama else.
        
### Listas y su procesamiento
        JuanPa
        
   La lista es un tipo de dato en Python que se utiliza para almacenar múltiples objetos. Es una colección ordenada y mutable de elementos separados por comas            entre corchetes, por ejemplo:
   
   
   ```python
                my_list = [1, None, True, "Soy una cadena", 256, 0]
   ```
 
  Las listas se pueden indexar y actualizar , por ejemplo:
  
   ```python 
               my_list = [1, None, True, 'Soy una cadena', 256, 0]
               print(my_list[3])  # salida: Soy una cadena
               print(my_list[-1])  # salida: 0

               my_list[1] = '?'
               print(my_list)  # salida: [1, '?', True, 'Soy una cadena', 256, 0]

               my_list.insert(0, "primero")
               my_list.append("último")
               print(my_list)  # outputs: ['primero', 1, '?', True, 'Soy una cadena', 256, 0, 'último']

   ```
   
  Las listas pueden estar anidadas, por ejemplo:

```python
               my_list = [1, 'a', ["lista", 64, [0, 1], False]]
```

Los elementos de la lista y las listas se pueden eliminar, por ejemplo:

```python
               my_list = [1, 2, 3, 4]
               del my_list[2]
               print(my_list)  # salida: [1, 2, 4]

               del my_list  # borra la lista entera
```

Las listas pueden ser iteradas mediante el uso del bucle for, por ejemplo:

```python
               my_list = ["blanco", "purpura", "azul", "amarillo", "verde"]

               for color in my_list:
               print(color)
```               


La función len() se puede usar para verificar la longitud de la lista, por ejemplo:

```python
               my_list = ["blanco", "purpura", "azul", "amarillo", "verde"]
               print(len(my_list))  # salida 5

               del my_list[2]
               print(len(my_list))  # salida 4
```               


Una invocación típica de función tiene el siguiente aspecto: `result = function(arg)`, mientras que una invocación típica de un método se ve así: `result = data.method(arg)`

#### Ordenamiento Burbuja
                              ........por completar




        
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
        El resultado proporcionado se puede determinar sobre la base de la tabla de verdad. Si consideramos la conjunción de A and B, el conjunto de valores posibles de argumentos y los valores correspondientes de conjunción se ve de la siguiente manera: 
	Argumento A  Argumento B  A and B  
        False         False       False
        False         True        False
        True          False       False
        True          True        True

        
        Operador de disyuncion: or
        Es un operador binario con una prioridad más baja que and (al igual que + en comparación con *).Su tabla de verdad es la siguiente:
	Argumento A    Argumento B  A or B
	False          False        False
	False          True         True
	True           False        True
	True           True         True

        Operador not
        Operador que puede aplicar para condiciones de construcción. Es un operador unario que realiza una negación lógica.Convierte la verdad en falso y lo falso en verdad. Este operador se escribe como la palabra not, y su prioridad es muy alta igual que el unario + y -.Su tabla de verdad es simple: 
	Argumento   not Argumento
	False       True
	True         False

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
	Argumento A  Argumento B  A & B  A | B  A ^ B
      0                    0                 0       0       0
      0                    1                 0       1       1
      1                    0                 0       1       1
      1                    1                 1       1       0


        Operaciones de bit a bit ()
	Argumento   ~ Argumento
      0                    1
      1                    0

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
        Prioridad   Operador
     1               ~,+,-                       unario
     2               **
     3               *,/,//,%
     4               +,-                          binario
     5               <<,>>
     6               <,<=,>,>=
     7               ==,!=
     8               &
     9               |
     10            =,+=,-=,*=,/=,%=
                     &=,^=,|=,>>=,<<
        

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
