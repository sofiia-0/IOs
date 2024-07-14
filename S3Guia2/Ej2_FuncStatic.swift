import Foundation

// Paso 1: Clase Calculadora con funciones estáticas
class Calculadora {
    // Función estática para sumar dos números
    static func sumar(a: Int, b: Int) -> Int {
        return a + b
    }
    
    // Función estática para restar dos números
    static func restar(a: Int, b: Int) -> Int {
        return a - b
    }
}

// Paso 2: Función para calcular suma y resta total de los elementos de un array
func calcularSumaYRestaTotal(de numeros: [Int]) -> (sumaTotal: Int, restaTotal: Int) {
    guard !numeros.isEmpty else {
        return (sumaTotal: 0, restaTotal: 0)
    }
    
    // Inicializar sumaTotal y restaTotal con el primer elemento del array
    var sumaTotal = numeros[0]
    var restaTotal = numeros[0]
    
    // Iterar sobre el array comenzando desde el segundo elemento
    for numero in numeros.dropFirst() {
        sumaTotal = Calculadora.sumar(a: sumaTotal, b: numero)
        restaTotal = Calculadora.restar(a: restaTotal, b: numero)
    }
    
    return (sumaTotal, restaTotal)
}

// Ejemplo de uso
let numeros = [1, 2, 3, 4, 5]

let resultado = calcularSumaYRestaTotal(de: numeros)
print("Suma total: \(resultado.sumaTotal)")    // Salida: Suma total: 20
print("Resta total: \(resultado.restaTotal)")  // Salida: Resta total: 0
