Algoritmo calculadoraGeometrica
	Definir altura, radio, base, longitu, ancho, area, volumen Como Real
	Definir opcionPrincipal, opcionSub, continuar Como Entero
	
	
	Repetir
        // Men� principal
        Escribir "===== CALCULADORA GEOMETRICA ====="
        Escribir "1. Calcular AREAS de figuras planas"
        Escribir "2. Calcular VOLUMENES de cuerpos solidos"
        Escribir "3. Salir"
        Escribir "Seleccione una opcion: "
        Leer opcionPrincipal
		
        Segun opcionPrincipal Hacer
			
            caso 1: // Submen� de �reas
                Repetir
                    Escribir "--- �REAS DISPONIBLES ---"
                    Escribir "1. �rea de Triangulo"
                    Escribir "2. �rea de Rectangulo"
                    Escribir "3. �rea de C�rculo"
                    Escribir "4. Volver al menu principal"
                    Leer opcionSub
					
                    Segun opcionSub Hacer
                        caso 1: 
                            Escribir "Ingrese la base: "
                            Leer base
                            Escribir "Ingrese la altura: "
                            Leer altura
                            area <- (base * altura) / 2
                            Escribir "El �rea del triangulo es: ", area
                        caso 2: 
                            Escribir "Ingrese la longitud: "
                            Leer longitu
                            Escribir "Ingrese el ancho: "
                            Leer ancho
                            area <- longitu * ancho
                            Escribir "El �rea del rectangulo es: ", area
                        caso 3: 
                            Escribir "Ingrese el radio: "
                            Leer radio
                            area <- PI * radio^2
                            Escribir "El area del circulo es: ", area
                        caso 4:
                            Escribir "Regresando al menu principal..."
                        De Otro Modo:
                            Escribir "Opci�n invalida."
                    FinSegun
                Hasta Que opcionSub = 4
				
            caso 2: // Submen� de Vol�menes
                Repetir
                    Escribir "--- VOL�MENES DISPONIBLES ---"
                    Escribir "1. Volumen de Esfera"
                    Escribir "2. Volumen de Cilindro"
                    Escribir "3. Volumen de Cono"
					Escribir "4. Volumen rectangulo"
                    Escribir "5. Volver al men� principal"
                    Leer opcionSub
					
                    Segun opcionSub Hacer
                        caso 1:
                            Escribir "Ingrese el radio: "
                            Leer radio
                            volumen <- (4/3) * PI * radio^3
                            Escribir "El volumen de la esfera es: ", volumen
                        caso 2:
                            Escribir "Ingrese el radio de la base: "
                            Leer radio
                            Escribir "Ingrese la altura: "
                            Leer altura
                            volumen <- PI * radio^2 * altura
                            Escribir "El volumen del cilindro es: ", volumen
                        caso 3:
                            Escribir "Ingrese el radio de la base: "
                            Leer radio
                            Escribir "Ingrese la altura: "
                            Leer altura
                            volumen <- (PI * radio^2 * altura) / 3
                            Escribir "El volumen del cono es: ", volumen
						caso 4:
							Escribir "Ingrese la altura: "
							Leer altura
							Escribir "Ingrese la base: "
							Leer base
							Escribir "Ingrese la Longitud: "
							Leer longitu
							volumen<-base*altura*longitu
							Escribir "El volumen del rectangulo es: ", volumen
                        caso 5:
                            Escribir "Regresando al menu principal..."
                        De Otro Modo:
                            Escribir "Opcion invalida."
                    FinSegun
                Hasta Que opcionSub = 4
				
            caso 3:
                Escribir "Saliendo del programa. Gracias."
				
            De Otro Modo:
                Escribir "Opci�n invalida. Intente de nuevo."
        FinSegun
		
    Hasta Que opcionPrincipal = 3
FinAlgoritmo

