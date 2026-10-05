Algoritmo EjemploNotas
	Definir nota1, nota2, examenfinal Como Real
	Definir resultado Como Real
	Definir APROVADO Como Logico
	
	Escribir "Ingresa la nota del primer parcial"
	Leer nota1
	Escribir "Ingrese la nota del segundo parcial"
	Leer nota2
	Escribir "Ingrese la nota del Examen Final"
	Leer examenfinal
	
	resultado <- nota1 + nota2 + examenfinal
	Escribir "Su nota final es:" resultado
	
	Si resultado >= 61
		Escribir "Aprovado"
	SiNo 
		Escribir "Reprovado"
	FinSi
	
FinAlgoritmo
