Algoritmo calculadoraInteractiva
    Definir opcion1, enteroo Como Entero
    Definir numero1, numero2, resultado Como Real
    Definir opcion2 Como Caracter
    
    opcion2 <- "si"
    
    Repetir
        Escribir "========Bienvenido a la calculadora estudiantil========"
        Escribir "Puedes realizar las siguientes operaciones:"
        Escribir "1. Suma"
        Escribir "2. Resta"
        Escribir "3. Multiplicacion"
        Escribir "4. Division"
        Escribir "Seleccione una opcion:"
        Leer opcion1
        
        Segun opcion1 Hacer
            Caso 1:
                Escribir "Digite el primer sumando:"
                Leer numero1
                Escribir "Digite el segundo sumando:"
                Leer numero2
                resultado <- numero1 + numero2
                Escribir numero1," + ",numero2," = ",resultado
            Caso 2:
                Escribir "Digite el minuendo:"
                Leer numero1
                Escribir "Digite el sustraendo:"
                Leer numero2
                resultado <- numero1 - numero2
                Escribir numero1," - ",numero2," = ",resultado
            Caso 3:
                Escribir "Digite el multiplicando:"
                Leer numero1
                Escribir "Digite el multiplicador:"
                Leer numero2
                resultado <- numero1 * numero2
                Escribir numero1," * ",numero2," = ",resultado
            Caso 4:
                Escribir "Digite el numerador:"
                Leer numero1
                Escribir "Digite el denominador:"
                Leer numero2
                Si numero2 = 0 Entonces
                    Escribir "ERROR: No se puede dividir entre cero."
                SiNo
                    resultado <- numero1 / numero2
                    Escribir numero1," / ",numero2," = ",resultado
                FinSi
            De Otro Modo:
                Escribir "ERROR. La opcion seleccionada no es valida."
        FinSegun
        
        enteroo <- Trunc(resultado)
        
        Si resultado = enteroo Entonces
            // El número es entero
            Si enteroo % 2 = 0 Entonces
                Escribir "El número ", enteroo," es PAR."
            SiNo
                Escribir "El número ", enteroo," es IMPAR."
            FinSi
        SiNo
            Escribir "El número ", resultado," tiene decimales, no se puede determinar si es par o impar."
        FinSi
        
        Escribir "¿Desea realizar otra operacion? (si/no)"
        Leer opcion2
    Hasta Que opcion2 = "no" O opcion2 = "NO"
    
FinAlgoritmo

