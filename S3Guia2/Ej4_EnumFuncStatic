import Foundation

// Paso 1: Enum de las operaciones matemáticas básicas.
enum OperacionMatematica {
    case suma
    case resta
    case multiplicacion
    case division
}

// Paso 2: Crear clase llamada OperadorMatematico que contiene una función estática para realizar operaciones matemáticas.
class OperadorMatematico {
    
    // Función estática para realizar una operación matemática
    // Toma dos números (a y b) y un tipo de operación, y devuelve el resultado de la operación.
    static func realizarOperacion(a: Double, b: Double, operacion: OperacionMatematica) -> Double? {
        switch operacion {
        case .suma:
            // Si la operación es suma, retorna la suma de a y b.
            return a + b
        case .resta:
            // Si la operación es resta, retorna la resta de a y b.
            return a - b
        case .multiplicacion:
            // Si la operación es multiplicación, retorna el producto de a y b.
            return a * b
        case .division:
            // Si la operación es división, manejamos el caso de división por cero.
            if b == 0 {
                // Si b es cero, se imprime un mensaje de error y retorna nil para indicar un resultado no válido.
                print("Error: División por cero")
                return nil
            }
            // Si no hay error, retorna el resultado de la división de a entre b.
            return a / b
        }
    }
}

// Ejemplo de uso
let numero1: Double = 10
let numero2: Double = 5

if let resultadoSuma = OperadorMatematico.realizarOperacion(a: numero1, b: numero2, operacion: .suma) {
    print("Resultado de la suma: \(resultadoSuma)")
}


if let resultadoDivision = OperadorMatematico.realizarOperacion(a: numero1, b: numero2, operacion: .division) {
    print("Resultado de la división: \(resultadoDivision)")
}

