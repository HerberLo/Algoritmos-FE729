Algoritmo ReinoDelDragon
	
	Definir nombre Como Caracter
	Definir vida, vidaMaxima, ataque, defensa Como Entero
	Definir nivel, experiencia, experienciaNecesaria Como Entero
	Definir oro, pociones Como Entero
	
	Definir enemigo, opcion Como Entero
	Definir vidaEnemigo, ataqueEnemigo, defensaEnemigo Como Entero
	Definir dano, danoEnemigo Como Entero
	Definir enemigoXP, enemigoOro Como Entero
	
	Definir zona Como Entero
	Definir evento Como Entero
	Definir probabilidad Como Entero
	Definir critico Como Entero
	
	Definir jugando, enCombate, gano, jefeDerrotado Como Logico
	
	// ================================
	// DATOS INICIALES
	// ================================
	
	vidaMaxima <- 100
	vida <- 100
	ataque <- 15
	defensa <- 5
	
	nivel <- 1
	experiencia <- 0
	experienciaNecesaria <- 100
	
	oro <- 50
	pociones <- 3
	
	zona <- 1
	
	jugando <- Verdadero
	jefeDerrotado <- Falso
	
	Escribir "==========================================="
	Escribir "        EL REINO DEL DRAGON"
	Escribir "==========================================="
	Escribir ""
	
	Escribir "Guerrero, ¿cual es tu nombre?"
	Leer nombre
	
	Escribir ""
	Escribir "Bienvenido ", nombre
	Escribir ""
	Escribir "El Reino de Eldoria ha sido atacado"
	Escribir "por un antiguo dragon."
	Escribir ""
	Escribir "Tu mision es atravesar las tierras,"
	Escribir "hacerte mas fuerte y derrotarlo."
	Escribir ""
	
	Esperar Tecla
	
	// ================================================
	// BUCLE PRINCIPAL DEL JUEGO
	// ================================================
	
	Mientras jugando = Verdadero Hacer
		
		Limpiar Pantalla
		
		Escribir "==========================================="
		Escribir "          REINO DEL DRAGON"
		Escribir "==========================================="
		Escribir ""
		Escribir "Jugador: ", nombre
		Escribir "Nivel: ", nivel
		Escribir "Vida: ", vida, "/", vidaMaxima
		Escribir "Oro: ", oro
		Escribir "Pociones: ", pociones
		Escribir "Zona: ", zona, "/10"
		Escribir ""
		
		Escribir "¿Que deseas hacer?"
		Escribir ""
		Escribir "[1] Explorar"
		Escribir "[2] Ver estadisticas"
		Escribir "[3] Usar pocion"
		Escribir "[4] Visitar tienda"
		Escribir "[5] Descansar"
		Escribir "[6] Salir del juego"
		Escribir ""
		
		Leer opcion
		
		Segun opcion Hacer
			
				// ========================================
				// EXPLORAR
				// ========================================
			
			1:
				
				Limpiar Pantalla
				
				Si zona < 10 Entonces
					
					evento <- Aleatorio(1,100)
					
					// ===========================
					// ENCUENTRO CON ENEMIGO
					// ===========================
					
					Si evento <= 65 Entonces
						
						enemigo <- Aleatorio(1,4)
						
						Segun enemigo Hacer
							
							1:
								Escribir "¡Un Goblin salvaje aparece!"
								
								vidaEnemigo <- 35 + (nivel * 5)
								ataqueEnemigo <- 8 + nivel
								defensaEnemigo <- 2 + nivel
								enemigoXP <- 30
								enemigoOro <- Aleatorio(10,25)
								
							2:
								Escribir "¡Un Esqueleto Guerrero aparece!"
								
								vidaEnemigo <- 45 + (nivel * 5)
								ataqueEnemigo <- 10 + nivel
								defensaEnemigo <- 4 + nivel
								enemigoXP <- 40
								enemigoOro <- Aleatorio(15,30)
								
							3:
								Escribir "¡Un Orco aparece!"
								
								vidaEnemigo <- 60 + (nivel * 6)
								ataqueEnemigo <- 13 + nivel
								defensaEnemigo <- 5 + nivel
								enemigoXP <- 55
								enemigoOro <- Aleatorio(20,40)
								
							4:
								Escribir "¡Un Caballero Oscuro aparece!"
								
								vidaEnemigo <- 75 + (nivel * 7)
								ataqueEnemigo <- 16 + nivel
								defensaEnemigo <- 7 + nivel
								enemigoXP <- 70
								enemigoOro <- Aleatorio(30,50)
								
						FinSegun
						
						Esperar Tecla
						
						enCombate <- Verdadero
						gano <- Falso
						
						// ===============================
						// SISTEMA DE COMBATE
						// ===============================
						
						Mientras enCombate = Verdadero Hacer
							
							Limpiar Pantalla
							
							Escribir "===================================="
							Escribir "           COMBATE"
							Escribir "===================================="
							
							Escribir ""
							Escribir nombre
							Escribir "Vida: ", vida, "/", vidaMaxima
							
							Escribir ""
							Escribir "Enemigo"
							Escribir "Vida: ", vidaEnemigo
							
							Escribir ""
							Escribir "[1] Atacar"
							Escribir "[2] Ataque poderoso"
							Escribir "[3] Usar pocion"
							Escribir "[4] Escapar"
							
							Leer opcion
							
							Segun opcion Hacer
								
									// =====================
									// ATAQUE NORMAL
									// =====================
								
								1:
									
									dano <- ataque - defensaEnemigo
									
									Si dano < 1 Entonces
										dano <- 1
									FinSi
									
									critico <- Aleatorio(1,100)
									
									Si critico <= 15 Entonces
										
										dano <- dano * 2
										
										Escribir ""
										Escribir "¡¡GOLPE CRITICO!!"
										
									FinSi
									
									vidaEnemigo <- vidaEnemigo - dano
									
									Escribir ""
									Escribir "Causaste ", dano, " puntos de daño."
									
									// =====================
									// ATAQUE PODEROSO
									// =====================
									
								2:
									
									probabilidad <- Aleatorio(1,100)
									
									Si probabilidad <= 65 Entonces
										
										dano <- (ataque * 2) - defensaEnemigo
										
										Si dano < 1 Entonces
											dano <- 1
										FinSi
										
										vidaEnemigo <- vidaEnemigo - dano
										
										Escribir ""
										Escribir "¡Ataque poderoso!"
										Escribir "Causaste ", dano, " de daño."
										
									SiNo
										
										Escribir ""
										Escribir "¡Fallaste el ataque!"
										
									FinSi
									
									// =====================
									// POCION
									// =====================
									
								3:
									
									Si pociones > 0 Entonces
										
										pociones <- pociones - 1
										vida <- vida + 40
										
										Si vida > vidaMaxima Entonces
											vida <- vidaMaxima
										FinSi
										
										Escribir ""
										Escribir "Usaste una pocion."
										Escribir "Recuperaste vida."
										
									SiNo
										
										Escribir ""
										Escribir "No tienes pociones."
										
									FinSi
									
									// =====================
									// ESCAPAR
									// =====================
									
								4:
									
									probabilidad <- Aleatorio(1,100)
									
									Si probabilidad <= 40 Entonces
										
										Escribir ""
										Escribir "Lograste escapar."
										
										enCombate <- Falso
										
									SiNo
										
										Escribir ""
										Escribir "¡No pudiste escapar!"
										
									FinSi
									
							FinSegun
							
							
							// ==========================
							// ENEMIGO DERROTADO
							// ==========================
							
							Si vidaEnemigo <= 0 Entonces
								
								enCombate <- Falso
								gano <- Verdadero
								
								Escribir ""
								Escribir "=================================="
								Escribir "       ENEMIGO DERROTADO"
								Escribir "=================================="
								
								Escribir ""
								Escribir "Ganaste ", enemigoXP, " XP."
								Escribir "Encontraste ", enemigoOro, " monedas."
								
								experiencia <- experiencia + enemigoXP
								oro <- oro + enemigoOro
								
							SiNo
								
								// ==========================
								// TURNO DEL ENEMIGO
								// ==========================
								
								Si enCombate = Verdadero Entonces
									
									danoEnemigo <- ataqueEnemigo - defensa
									
									Si danoEnemigo < 1 Entonces
										danoEnemigo <- 1
									FinSi
									
									vida <- vida - danoEnemigo
									
									Escribir ""
									Escribir "El enemigo te causa ", danoEnemigo, " de daño."
									
								FinSi
								
							FinSi
							
							
							// ==========================
							// JUGADOR DERROTADO
							// ==========================
							
							Si vida <= 0 Entonces
								
								enCombate <- Falso
								jugando <- Falso
								
								Escribir ""
								Escribir "=================================="
								Escribir "           GAME OVER"
								Escribir "=================================="
								Escribir ""
								Escribir nombre, " ha caido en combate."
								
							FinSi
							
							Esperar Tecla
							
						FinMientras
						
						
						// ===============================
						// SUBIR DE NIVEL
						// ===============================
						
						Si jugando = Verdadero Entonces
							
							Si experiencia >= experienciaNecesaria Entonces
								
								nivel <- nivel + 1
								
								experiencia <- experiencia - experienciaNecesaria
								
								experienciaNecesaria <- experienciaNecesaria + 50
								
								vidaMaxima <- vidaMaxima + 20
								vida <- vidaMaxima
								
								ataque <- ataque + 5
								defensa <- defensa + 2
								
								Escribir ""
								Escribir "======================================"
								Escribir "          ¡SUBISTE DE NIVEL!"
								Escribir "======================================"
								
								Escribir ""
								Escribir "Ahora eres nivel ", nivel
								Escribir "Vida maxima: ", vidaMaxima
								Escribir "Ataque: ", ataque
								Escribir "Defensa: ", defensa
								
								Esperar Tecla
								
							FinSi
							
						FinSi
						
						
						Si gano = Verdadero Entonces
							zona <- zona + 1
						FinSi
						
						
						// ===============================
						// ENCONTRAR TESORO
						// ===============================
						
					SiNo
						
						Si evento <= 85 Entonces
							
							oro <- oro + Aleatorio(20,60)
							
							Escribir ""
							Escribir "Encontraste un cofre escondido."
							Escribir ""
							Escribir "Ahora tienes ", oro, " monedas."
							
							zona <- zona + 1
							
							Esperar Tecla
							
						SiNo
							
							// ===========================
							// FUENTE MAGICA
							// ===========================
							
							vida <- vidaMaxima
							
							Escribir ""
							Escribir "Encontraste una fuente magica."
							Escribir ""
							Escribir "Tu vida se ha restaurado completamente."
							
							zona <- zona + 1
							
							Esperar Tecla
							
						FinSi
						
					FinSi
					
					
					// =====================================
					// JEFE FINAL
					// =====================================
					
				SiNo
					
					Limpiar Pantalla
					
					Escribir "============================================"
					Escribir "             CASTILLO DEL DRAGON"
					Escribir "============================================"
					Escribir ""
					Escribir "Has llegado al final del camino."
					Escribir ""
					Escribir "El suelo comienza a temblar..."
					Escribir ""
					Escribir "¡¡EL DRAGON ANCESTRAL APARECE!!"
					Escribir ""
					
					Esperar Tecla
					
					vidaEnemigo <- 300
					ataqueEnemigo <- 30
					defensaEnemigo <- 12
					
					enCombate <- Verdadero
					
					Mientras enCombate = Verdadero Hacer
						
						Limpiar Pantalla
						
						Escribir "========================================"
						Escribir "        BATALLA CONTRA EL DRAGON"
						Escribir "========================================"
						
						Escribir ""
						Escribir nombre
						Escribir "Vida: ", vida, "/", vidaMaxima
						
						Escribir ""
						Escribir "DRAGON ANCESTRAL"
						Escribir "Vida: ", vidaEnemigo
						
						Escribir ""
						Escribir "[1] Atacar"
						Escribir "[2] Ataque poderoso"
						Escribir "[3] Usar pocion"
						
						Leer opcion
						
						Segun opcion Hacer
							
							1:
								
								dano <- ataque - defensaEnemigo
								
								Si dano < 1 Entonces
									dano <- 1
								FinSi
								
								critico <- Aleatorio(1,100)
								
								Si critico <= 20 Entonces
									dano <- dano * 2
									Escribir "¡¡CRITICO!!"
								FinSi
								
								vidaEnemigo <- vidaEnemigo - dano
								
								Escribir "Causaste ", dano, " de daño."
								
							2:
								
								probabilidad <- Aleatorio(1,100)
								
								Si probabilidad <= 60 Entonces
									
									dano <- (ataque * 2) - defensaEnemigo
									
									vidaEnemigo <- vidaEnemigo - dano
									
									Escribir "Ataque poderoso."
									Escribir "Causaste ", dano, " de daño."
									
								SiNo
									
									Escribir "Fallaste."
									
								FinSi
								
							3:
								
								Si pociones > 0 Entonces
									
									pociones <- pociones - 1
									vida <- vida + 40
									
									Si vida > vidaMaxima Entonces
										vida <- vidaMaxima
									FinSi
									
									Escribir "Usaste una pocion."
									
								SiNo
									
									Escribir "No tienes pociones."
									
								FinSi
								
						FinSegun
						
						
						Si vidaEnemigo <= 0 Entonces
							
							enCombate <- Falso
							jefeDerrotado <- Verdadero
							jugando <- Falso
							
						SiNo
							
							danoEnemigo <- ataqueEnemigo - defensa
							
							Si danoEnemigo < 1 Entonces
								danoEnemigo <- 1
							FinSi
							
							vida <- vida - danoEnemigo
							
							Escribir ""
							Escribir "El dragon te causa ", danoEnemigo, " de daño."
							
							Si vida <= 0 Entonces
								
								enCombate <- Falso
								jugando <- Falso
								
							FinSi
							
						FinSi
						
						Esperar Tecla
						
					FinMientras
					
				FinSi
				
				// ==========================================
				// ESTADISTICAS
				// ==========================================
				
			2:
				
				Limpiar Pantalla
				
				Escribir "======================================"
				Escribir "          ESTADISTICAS"
				Escribir "======================================"
				
				Escribir ""
				Escribir "Nombre: ", nombre
				Escribir "Nivel: ", nivel
				Escribir "Experiencia: ", experiencia, "/", experienciaNecesaria
				Escribir ""
				Escribir "Vida: ", vida, "/", vidaMaxima
				Escribir "Ataque: ", ataque
				Escribir "Defensa: ", defensa
				Escribir ""
				Escribir "Oro: ", oro
				Escribir "Pociones: ", pociones
				Escribir "Zona: ", zona
				Escribir ""
				
				Esperar Tecla
				
				// ==========================================
				// USAR POCION
				// ==========================================
				
			3:
				
				Si pociones > 0 Entonces
					
					Si vida < vidaMaxima Entonces
						
						pociones <- pociones - 1
						vida <- vida + 40
						
						Si vida > vidaMaxima Entonces
							vida <- vidaMaxima
						FinSi
						
						Escribir "Usaste una pocion."
						Escribir "Vida actual: ", vida
						
					SiNo
						
						Escribir "Ya tienes la vida completa."
						
					FinSi
					
				SiNo
					
					Escribir "No tienes pociones."
					
				FinSi
				
				Esperar Tecla
				
				// ==========================================
				// TIENDA
				// ==========================================
				
			4:
				
				Limpiar Pantalla
				
				Escribir "======================================"
				Escribir "             TIENDA"
				Escribir "======================================"
				
				Escribir ""
				Escribir "Oro disponible: ", oro
				Escribir ""
				
				Escribir "[1] Pocion          - 25 monedas"
				Escribir "[2] Mejorar espada  - 100 monedas"
				Escribir "[3] Mejorar armadura- 100 monedas"
				Escribir "[4] Salir"
				
				Leer opcion
				
				Segun opcion Hacer
					
					1:
						
						Si oro >= 25 Entonces
							
							oro <- oro - 25
							pociones <- pociones + 1
							
							Escribir "Compraste una pocion."
							
						SiNo
							
							Escribir "No tienes suficiente oro."
							
						FinSi
						
					2:
						
						Si oro >= 100 Entonces
							
							oro <- oro - 100
							ataque <- ataque + 5
							
							Escribir "Mejoraste tu espada."
							Escribir "Ataque +5"
							
						SiNo
							
							Escribir "No tienes suficiente oro."
							
						FinSi
						
					3:
						
						Si oro >= 100 Entonces
							
							oro <- oro - 100
							defensa <- defensa + 3
							
							Escribir "Mejoraste tu armadura."
							Escribir "Defensa +3"
							
						SiNo
							
							Escribir "No tienes suficiente oro."
							
						FinSi
						
				FinSegun
				
				Esperar Tecla
				
				// ==========================================
				// DESCANSAR
				// ==========================================
				
			5:
				
				Si oro >= 20 Entonces
					
					oro <- oro - 20
					vida <- vidaMaxima
					
					Escribir "Descansaste en la posada."
					Escribir "Tu vida fue restaurada."
					
				SiNo
					
					Escribir "Necesitas 20 monedas para descansar."
					
				FinSi
				
				Esperar Tecla
				
				// ==========================================
				// SALIR
				// ==========================================
				
			6:
				
				Escribir "¿Seguro que quieres abandonar la aventura?"
				Escribir "[1] Si"
				Escribir "[2] No"
				
				Leer opcion
				
				Si opcion = 1 Entonces
					jugando <- Falso
				FinSi
				
			De Otro Modo:
				
				Escribir "Opcion invalida."
				Esperar Tecla
				
		FinSegun
		
	FinMientras
	
	
	// ===============================================
	// FINAL
	// ===============================================
	
	Limpiar Pantalla
	
	Si jefeDerrotado = Verdadero Entonces
		
		Escribir "=========================================="
		Escribir "              ¡VICTORIA!"
		Escribir "=========================================="
		Escribir ""
		Escribir nombre, " ha derrotado al Dragon Ancestral."
		Escribir ""
		Escribir "El Reino de Eldoria vuelve a estar en paz."
		Escribir ""
		Escribir "Nivel final: ", nivel
		Escribir "Oro restante: ", oro
		
	SiNo
		
		Si vida <= 0 Entonces
			
			Escribir "=========================================="
			Escribir "              GAME OVER"
			Escribir "=========================================="
			Escribir ""
			Escribir "Tu aventura ha terminado."
			
		SiNo
			
			Escribir "Gracias por jugar, ", nombre
			
		FinSi
		
	FinSi
	
FinAlgoritmo
