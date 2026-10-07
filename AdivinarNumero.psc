Algoritmo AdivinarNumero
	Definir numeroSecreto, numerojugador, intentos Como Entero
	Definir Adivino Como Logico
	
	numeroSecreto <- Aleatorio (1,50)
	intentos <- 0
	Adivino <- Falso
	
	Escribir "------------------------------"
	Escribir "   Adivina un Numero 1 a 50   "
	Escribir "______________________________"
	Escribir "Intenta adivinar un numero del 1 al 50"
	Escribir "Tienes 5 intentos"
	
	Repetir
		
		intentos <- intentos + 1
		Escribir ""
		Escribir "Intento # " intentos
		Escribir "Adivina el numero"
		Leer numerojugador
		
		Si numeroJugador = numeroSecreto Entonces
			adivino <- Verdadero
		SiNo
			Si numeroJugador < numeroSecreto Entonces
				Escribir "Mas alto"
			SiNo
				Escribir "Mas bajo"
			FinSi
		FinSi
		

	Hasta Que adivino = Verdadero O intentos = 5
	
	Escribir ""
	Escribir "===================================="
	
	Si adivino = Verdadero Entonces
		Escribir "Felicidades, LO ADIVINASTE."
		Escribir "Lo lograste en ", intentos, " intento(s)."
	SiNo
		Escribir "Se terminaron los 5 intentos."
		Escribir "El numero secreto era: ", numeroSecreto
	FinSi
FinAlgoritmo
