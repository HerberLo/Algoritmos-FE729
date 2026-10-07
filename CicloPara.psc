Algoritmo CicloPara
	Definir num, rep, notas Como Entero
	Dimension notas[10]//Este es un arreglo de 10 notas
	notas[1] <- 90
	notas[2] <- 100
	notas[3] <- 85
	notas[4] <- 70
	notas[5] <- 100

	para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Escriba la nota", i
		Leer notas[i]
	FinPara
	
	
	Escribir "Ingrese un numerode repeticiones"
	leer rep 
	Para num <- 1 hasta rep Con Paso 2 Hacer
		Escribir "esta es la rep: " num
	
	FinPara
	
FinAlgoritmo
