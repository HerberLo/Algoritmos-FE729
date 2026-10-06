Algoritmo ConvertirMinutos
	Definir totalMinutos, horas, minutos Como Entero
	
	Escribir "Ingrese la cantidad de minutos:"
	Leer totalMinutos
	
	horas <- trunc(totalMinutos / 60)
	minutos <- totalMinutos MOD 60
	
	Escribir totalMinutos, " minutos equivale a ", horas, " hora(s) y ", minutos, " minuto(s)"
FinAlgoritmo