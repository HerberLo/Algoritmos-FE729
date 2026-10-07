Algoritmo MenuPrueba
	
	Definir entrada, nota Como Entero
	
	Repetir
	
	Escribir "Ingrese una opcion 1-3"
	Escribir "[1] Ingresar nota"
	Escribir "[2] Mostrar categoria"
	Escribir "[3] Salir"
	Leer entrada
	
	segun entrada
		1: 
			Repetir
			
			escribir "Ingrese una nota entre 0-100"
			leer nota
			si nota >= 100 o nota < 0 Entonces
				Escribir "Nota ingresada no es valida"
			FinSi
			
		Hasta Que nota >= 0 y nota <= 100
		Escribir "La nota ingresada es: " nota
		
		2:
			si nota >= 60 Entonces
				Escribir "Aprovado"
			SiNo
				Escribir "Reprobado"
			FinSi
		3:
			Escribir "Saliendo del menu"
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
	Hasta Que entrada = 3
	
FinAlgoritmo
