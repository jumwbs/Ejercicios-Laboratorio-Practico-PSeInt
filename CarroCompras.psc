Algoritmo  CarritoCompras
    Definir i, opcion, cantidad, pos, seguir Como Entero
    Definir precio, subtotal, total, iva, totalFinal, descuento Como Real
    Definir metodoPago Como Entero
    Definir nombre Como Cadena
    
    // Definir número de productos
    n <- 4
    
    Dimension nombres[n]
    Dimension precios[n]
    Dimension stocks[n]
    Dimension carrito[n]
    
    // --- Registro de productos ---
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "=== Registro del producto ", i, " ==="
        Escribir "Nombre: "
        Leer nombres[i]
        Repetir
            Escribir "Precio: "
            Leer precios[i]
        Hasta Que precios[i] > 0
        Repetir
            Escribir "Cantidad en stock: "
            Leer stocks[i]
        Hasta Que stocks[i] >= 0
        carrito[i] <- 0
    FinPara
    
    seguir <- 1
    
    Mientras seguir = 1 Hacer
        // --- Menú de productos ---
        Escribir ""
        Escribir "=== MENÚ DE COMPRA ==="
        Para i <- 1 Hasta n Hacer
            Escribir i, ") ", nombres[i], " - $", precios[i], " (Stock: ", stocks[i], ")"
        FinPara
        Escribir n+1, ") Finalizar compra"
        
        Escribir "Seleccione un producto: "
        Leer opcion
        
        Si opcion >=1 Y opcion <= n Entonces
            Escribir "¿Cuántas unidades desea?: "
            Leer cantidad
            
            Si cantidad > 0 Y cantidad <= stocks[opcion] Entonces
                carrito[opcion] <- carrito[opcion] + cantidad
                stocks[opcion] <- stocks[opcion] - cantidad
                Escribir "Producto añadido al carrito. Stock actualizado: ", stocks[opcion]
            SiNo
                Escribir "Cantidad inválida o mayor que el stock disponible."
            FinSi
        SiNo
            Si opcion = n+1 Entonces
                // --- Calcular total ---
                total <- 0
                Escribir ""
                Escribir "===== RESUMEN DEL CARRITO ====="
                Para i <- 1 Hasta n Hacer
                    Si carrito[i] > 0 Entonces
                        subtotal <- carrito[i] * precios[i]
                        Escribir carrito[i], " x ", nombres[i], " = $", subtotal
                        total <- total + subtotal
                    FinSi
                FinPara
                
                iva <- total * 0.19
                totalFinal <- total + iva
                
                Escribir "Subtotal: $", total
                Escribir "IVA (19%): $", iva
                Escribir "Total antes de descuento: $", totalFinal
                
                // --- Métodos de pago ---
                Escribir ""
                Escribir "Seleccione método de pago:"
                Escribir "1) Efectivo (10% descuento)"
                Escribir "2) Tarjeta (5% descuento)"
                Escribir "3) Transferencia (sin descuento)"
                Leer metodoPago
                
                descuento <- 0
                Segun metodoPago Hacer
                    1:
                        descuento <- totalFinal * 0.10
                    2:
                        descuento <- totalFinal * 0.05
                    3:
                        descuento <- 0
                FinSegun
                
                totalFinal <- totalFinal - descuento
                Escribir "Descuento aplicado: $", descuento
                Escribir "TOTAL A PAGAR: $", totalFinal
                
                Escribir ""
                Escribir "¿Desea realizar otra compra? (1=Sí, 0=No)"
                Leer seguir
                
                // Reiniciar carrito si decide continuar
                Si seguir = 1 Entonces
                    Para i <- 1 Hasta n Hacer
                        carrito[i] <- 0
                    FinPara
                FinSi
            FinSi
        FinSi
    FinMientras
    
    Escribir "Gracias por su compra. ¡Hasta luego!"
FinAlgoritmo

