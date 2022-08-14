"""
5) Crear una tupla en Python con el nombre de “Historial” la cual  contenga los siguientes valores:

          2350, 5960, 23000, 1000, 8900

Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”. Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”. Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”.
"""
#creando funcion para sumar los valores de una lista o tupla y devuelve el resutlado
def sumar_tupla(tupla):
  montoTotal=0 #acumulador
  for i in tupla:
    montoTotal += i
  return montoTotal

#creando tupla
historial =(2350, 5960, 23000, 1000, 8900);
montoTotal=sumar_tupla(historial)# llamando a la funcion sumar_tupla

#Verificando si el monto total gastado supera el presupuesto
if montoTotal <30000:
  print("el monto total gastado en servicios/consultas de Puppy es: " ,montoTotal)
else:
  print("gastos por encima de los presupuestado")

