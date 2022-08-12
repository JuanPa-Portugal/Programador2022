"""
4) Crear un lista en Python denominado “Perro2” que contenga los   siguientes valores:

      14,  Fido,  12/12/2012 , Macho, 23546987

Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.
"""
EJERCICIO RESULETO
"""Creando mi lista Perro2 del tipo heterogénea"""

Perro2 = [14, "Fido",  "12/12/2012", "Macho", 23546987]

"""Recorriendo mi lista y mostrando sus elementos desde el ultimo al primero"""
for x in range(len(Perro2)-1,-1,-1):
  print(Perro2[x])

