import Foundation

// Función que ordena un array de enteros usando el algoritmo de selección
func ordenarPorSeleccion(_ array: inout [Int]) {
    // Verifica si el array tiene 0 o 1 elemento. En tal caso, no es necesario ordenar
    guard array.count > 1 else { return }
    
    // Obtiene la cantidad de elementos en el array
    let n = array.count
    
    // Itera sobre cada elemento del array
    for i in 0..<n-1 {
        // Inicializa el índice del menor elemento encontrado en la iteración actual
        var indiceMenor = i
        
        // Busca el menor elemento en el sub-array que comienza en i+1
        for j in i+1..<n {
            // Si encuentra un elemento menor que el actual elemento mínimo registrado
            if array[j] < array[indiceMenor] {
                // Actualiza el índice del menor elemento encontrado
                indiceMenor = j
            }
        }
        
        // Si el índice del menor elemento encontrado es diferente del índice actual i
        if indiceMenor != i {
            // Intercambia el elemento en el índice actual con el elemento en el índice del menor elemento
            array.swapAt(i, indiceMenor)
        }
    }
}

// Ejemplo de uso de la función
var numeros = [64, 25, 12, 22, 11, 90, -2]
print("Array original > ", numeros)

// Llama a la función para ordenar el array por selección
ordenarPorSeleccion(&numeros)
print("Array ordenado por selección > ", numeros)
