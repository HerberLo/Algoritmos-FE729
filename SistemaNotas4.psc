
SubProceso MostrarMenu
	Escribir "==========================="
	Escribir "  SISTEMA DE NOTAS FE729   "
	Escribir "==========================="
	Escribir "1. Ingrese las notas"
	Escribir "2. Mostrar notas y categorias"
	Escribir "3. Estadisticas"
	Escribir "4. Sumar puntos extra"
	Escribir "5. Salir"
	Escribir "Opcion"
FinSubProceso

Proceso SistemaNotas
	Definir opcion Como Entero
	MostrarMenu
	Leer opcion
	
FinProceso


Algoritmo 
	
FinAlgoritmo
