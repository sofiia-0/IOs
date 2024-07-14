import Foundation

// Función para sumar dos matrices
func sumaMatrices(matriz1: [[Int]], matriz2: [[Int]]) -> [[Int]]? {
    let filas1 = matriz1.count
    let columnas1 = matriz1.isEmpty ? 0 : matriz1[0].count
    let filas2 = matriz2.count
    let columnas2 = matriz2.isEmpty ? 0 : matriz2[0].count
    
    // Verificar si las dimensiones son compatibles para la suma
    if filas1 != filas2 || columnas1 != columnas2 {
        print("Las matrices no tienen las mismas dimensiones. No se puede realizar la suma.")
        return nil
    }
    
    // Realizar la suma de matrices
    var resultado = [[Int]](repeating: [Int](repeating: 0, count: columnas1), count: filas1)
    
    for fila in 0..<filas1 {
        for columna in 0..<columnas1 {
            resultado[fila][columna] = matriz1[fila][columna] + matriz2[fila][columna]
        }
    }
    
    return resultado
}

// Función para multiplicar dos matrices
func multiplicarMatrices(matriz1: [[Int]], matriz2: [[Int]]) -> [[Int]]? {
    let filas1 = matriz1.count
    let columnas1 = matriz1.isEmpty ? 0 : matriz1[0].count
    let filas2 = matriz2.count
    let columnas2 = matriz2.isEmpty ? 0 : matriz2[0].count
    
    // Verificar si las dimensiones son compatibles para la multiplicación
    if columnas1 != filas2 {
        print("El número de columnas de la primera matriz debe ser igual al número de filas de la segunda matriz.")
        return nil
    }
    
    // Inicializar la matriz resultado
    var resultado = [[Int]](repeating: [Int](repeating: 0, count: columnas2), count: filas1)
    
    // Realizar la multiplicación de matrices
    for fila in 0..<filas1 {
        for columna in 0..<columnas2 {
            for indice in 0..<columnas1 {
                resultado[fila][columna] += matriz1[fila][indice] * matriz2[indice][columna]
            }
        }
    }
    
    return resultado
}

// Ejemplos de uso
let matrizA = [
    [1, 2],
    [3, 4]
]

let matrizB = [
    [5, 6],
    [7, 8]
]

let matrizC = [
    [1, 2],
    [3, 4]
]

let matrizD = [
    [5, 6],
    [7, 8]
]

// Prueba de la suma de matrices
if let sumaResultado = sumaMatrices(matriz1: matrizA, matriz2: matrizB) {
    print("Resultado de la suma:")
    for fila in sumaResultado {
        print(fila)
    }
}

// Prueba de la multiplicación de matrices
if let multiplicacionResultado = multiplicarMatrices(matriz1: matrizC, matriz2: matrizD) {
    print("Resultado de la multiplicación:")
    for fila in multiplicacionResultado {
        print(fila)
    }
} else {
    print("No se pudo realizar la multiplicación de matrices.")
}
