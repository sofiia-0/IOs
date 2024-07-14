import Foundation

// Paso 1: Protocolo Figura
protocol Figura {
    // Método para calcular el área de la figura
    func calcularArea() -> Double
}

// Paso 2: Estructura Cuadrado que conforma al protocolo Figura
struct Cuadrado: Figura {
    var lado: Double
    
    // Implementación del método para calcular el área de un cuadrado
    func calcularArea() -> Double {
        return lado * lado
    }
}

// Paso 3: Estructura Rectangulo que conforma al protocolo Figura
struct Rectangulo: Figura {
    var ancho: Double
    var alto: Double
    
    // Implementación del método para calcular el área de un rectángulo
    func calcularArea() -> Double {
        return ancho * alto
    }
}

// Paso 4: Función para calcular el área total de todas las figuras
func calcularAreaTotal(figuras: [Figura]) -> Double {
    var areaTotal: Double = 0.0  // Inicializar el total de área a 0
    
    // Iterar sobre cada figura en el array
    for figura in figuras {
        // Sumar el área de la figura actual al total
        areaTotal += figura.calcularArea()
    }
    
    return areaTotal  // Devolver el área total calculada
}

// Ejemplo de uso
let cuadrado = Cuadrado(lado: 4)                // Crear una instancia de Cuadrado
let rectangulo = Rectangulo(ancho: 3, alto: 5) // Crear una instancia de Rectangulo

// Crear un array de figuras que contiene el cuadrado y el rectángulo
let figuras: [Figura] = [cuadrado, rectangulo]

// Calcular el área total de todas las figuras en el array
let areaTotal = calcularAreaTotal(figuras: figuras)

// Imprimir el área total de todas las figuras
print("Área total de todas las figuras: \(areaTotal)")  // Salida: Área total de todas las figuras: 46.0
