SubProceso MostrarMenu
	Escribir "=============================="
	Escribir "     SISTEMA DE NOTAS FE729"
	Escribir "=============================="
	Escribir "1. Ingresar notas"
	Escribir "2. Mostrar notas y categorias"
	Escribir "3. Estadisticas"
	Escribir "4. Sumar puntos extra"
	Escribir "5. Salir"
FinSubProceso

SubProceso IngresarNotas(notas)
	Definir i Como Entero
	para i <- 1 Hasta 5 Hacer
Repetir 
		Escribir "Ingrese nota del estudiante " i, ": "
		leer notas[i]
	Hasta Que notas[i] >= 0 Y notas[i] <=100
	FinPara
FinSubProceso

Proceso SistemaNotas
	Definir opcion Como Entero
	Definir notas Como Real
	Definir HayNotas Como Logico
	HayNotas <- Falso
	Dimension notas[5]
	
Repetir
	MostrarMenu
	Escribir "Seleccione una opcion: "
	Leer opcion
Segun opcion Hacer
	1:
		Escribir "Elegiste Ingresar Notas"
		IngresarNotas(notas)
		HayNotas <- Verdadero
	2:
		Escribir "Elegiste Mostrar Notas"
		si HayNotas = Verdadero
			Entonces
			Escribir "Si hay notas guardadas"
		FinSi
	3:
		Escribir "Elegiste ver Estadisticas"
	4:
		Escribir "Elegiste sumar puntos extra"
	5:
		Escribir "Saliendo del Programa"
	De Otro Modo:
		Escribir "Opcion no valida"
FinSegun

Hasta Que opcion = 5

FinProceso

