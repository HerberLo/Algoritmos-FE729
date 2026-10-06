Algoritmo EvaluarEstudiante
	Definir NOTA_MINIMA Como Entero
	Definir NotaFinal Como Real
	NOTA_MINIMA <- 61
	
	Escribir "Ingrese la nota final:"
	Leer NotaFinal
	
	Si NotaFinal >= NOTA_MINIMA Entonces
		Escribir "APROBADO"
	SiNo
		Escribir "Reprobado"
	FinSi
	
	Si NotaFinal >=90 Entonces
		Escribir "FELICITACIONES"
	SiNo
		si NotaFinal >=80 Entonces
			Escribir "Sobresaliente"
		FinSi
	FinSi
FinAlgoritmo
