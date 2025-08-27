Algoritmo  MonitoreoDeSensores
    Definir n, i, opcion1, opcion2 Como Entero
    Definir temperatura, suma, promedio Como Real
    Definir tempFahrenheit Como Real
    Definir menores20, mayores80, normales Como Entero
    Definir temperaturas Como Real
    Dimension temperaturas[100]   // máximo 100 sensores
	
    opcionn <- 0
    
    Repetir
        Escribir "===== SISTEMA DE MONITOREO DE SENSORES ====="
		Escribir "1. Ingresar cantidad de sensores y sus lecturas"
        Escribir "2. Salir"
		Leer opcion1
		
		Segun opcion1 Hacer
			caso 1:
				Escribir "Ingrese el numero de sensores a monitorear (max 100): "
                Leer n
                Mientras n <= 0 O n > 100 Hacer
                    Escribir "Valor invalido. Ingrese un numero entre 1 y 100:"
                    Leer n
                FinMientras
				
                suma <- 0
                menores20 <- 0
                mayores80 <- 0
                normales <- 0
				
                Para i <- 1 Hasta n Con Paso 1 Hacer
                    Repetir
                        Escribir "Ingrese la temperatura del sensor ", i, " (0 a 100 °C): "
                        Leer temperatura
                        Si temperatura < 0 O temperatura > 100 Entonces
                            Escribir "ERROR: La temperatura debe estar entre 0 y 100 °C."
                        FinSi
                    Hasta Que temperatura >= 0 Y temperatura <= 100
					
                    temperaturas[i] <- temperatura
                    suma <- suma + temperatura
					
                    // Clasificación
                    Si temperatura < 20 Entonces
                        menores20 <- menores20 + 1
                    SiNo
                        Si temperatura > 80 Entonces
                            mayores80 <- mayores80 + 1
                        SiNo
                            normales <- normales + 1
                        FinSi
                    FinSi
                FinPara
				
                Escribir "Lecturas registradas correctamente."
				
				Escribir "========================="
				Escribir "Elige una opcion:"
				Escribir "1. Mostrar resumen de temperaturas"
				Escribir "2. Reiniciar Lecturas"
				Leer opcion2
				
				Segun opcion2 Hacer
					caso 1:
						Si n = 0 Entonces
							Escribir "No hay lecturas registradas aun."
						SiNo
							Escribir "===== RESUMEN DE TEMPERATURAS ====="
							promedio <- suma / n
							tempFahrenheit <- (suma * 9/5) + 32
							
							Escribir "Numero total de sensores: ", n
							Escribir "Suma de temperaturas en °C: ", suma
							Escribir "Suma convertida a °F: ", tempFahrenheit
							Escribir "Temperatura promedio en °C: ", promedio
							Escribir "Sensores con < 20 °C: ", menores20
							Escribir "Sensores con > 80 °C: ", mayores80
							Escribir "Sensores en condiciones normales: ", normales
						FinSi
						
					caso 2:
						n <- 0
						suma <- 0
						menores20 <- 0
						mayores80 <- 0
						normales <- 0
						Escribir "Se han reiniciado las lecturas."
						
				FinSegun
		FinSegun
		
	Hasta Que opcion1=2
	
	
	
FinAlgoritmo
