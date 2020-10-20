import json
from tabulate import _table_formats, tabulate

with open("SISA_Scrapper/sisa.json", "r") as read_file:
    data = json.load(read_file)
##    print(data)

mat = []
tabla = []


clase = 0
unit = 0
units = len(data["consulta"][0]["clases"][clase]["materia"]["unidades"])

while clase < 6:
    for i in data["consulta"][0]["clases"]:
        mat.append(data["consulta"][0]["clases"][clase]["materia"]["descripcion"])
    
        for x in data["consulta"][0]["clases"][clase]["materia"]["unidades"]:
            unidad = (data["consulta"][0]["clases"][clase]["materia"]["unidades"][unit]["calificacion"])
            mat.append(unidad)
##            print(mat)
            if unit < units:
                unit= unit+1
        unit = 0

##        print(clase)
        tabla.append(mat)
##        print(tabla)
        mat = []
        
      
        if clase < 6:
            clase = clase+1

print(tabulate(tabla))
