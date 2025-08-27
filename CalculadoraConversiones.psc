Algoritmo CalculadoraConversiones
    Definir opcionn Como Entero
    Definir cantidad, resultado Como Real
	definir seguir , seguir2 Como Caracter
	
    opcionn <- 0
	
	Repetir
		Escribir "==CALCULADORA DE CONVERSIONES"
        Escribir "1. Convertir Kilometros a Millas"
        Escribir "2. Convertir Pulgadas a Centímetros"
        Escribir "3. Convertir Libras a Kilogramos"
        Escribir "4. Convertir Litros a Galones"
        Escribir "Seleccione una opción: "
        Leer opcionn
		
		Repetir
			segun opcionn Hacer
				caso 1:
					Escribir "Digite la cantidad de kilometros que va a convertir a millas:"
					leer cantidad
					si cantidad >= 0 Entonces
						resultado<- cantidad*0.621371
						Escribir cantidad, " km = ", resultado," mi"
					SiNo
						escribir "La cantidad ingresada es invalida"
					FinSi
					
				caso 2:
					Escribir "Digite la cantidad de pulgadas que va a convertir a centimetros:"
					leer cantidad
					si cantidad >= 0 Entonces
						resultado<- cantidad*2.54
						Escribir cantidad, " in = ", resultado," cm"
					SiNo
						escribir "La cantidad ingresada es invalida"
					FinSi
					
				caso 3:
					Escribir "Digite la cantidad de libras que va a convertir a kilogramos:"
					leer cantidad
					si cantidad >= 0 Entonces
						resultado<- cantidad*0.453592
						Escribir cantidad, " lb = ", resultado," kg"
					SiNo
						escribir "La cantidad ingresada es invalida"
					FinSi
					
				caso 4:
					Escribir "Digite la cantidad de litros que va a convertir a galones:"
					leer cantidad
					si cantidad >= 0 Entonces
						resultado<- cantidad*0.264172
						Escribir cantidad, " L = ", resultado," gal"
					SiNo
						escribir "La cantidad ingresada es invalida"
					FinSi
					
				De Otro Modo:
					Escribir "La opcion seleccionada es invalida."
					
			FinSegun
			Escribir "Quiere hacer otra conversion de este tipo (si/no)"
			leer seguir2
		Hasta Que seguir2 = "no" o seguir = "NO"
		
		Escribir "Desea volver al menu principal (si/no)"
		leer seguir
		
	Hasta Que seguir ="no" o seguir="NO"
	Escribir "HASTA LUEGO"
	
FinAlgoritmo

