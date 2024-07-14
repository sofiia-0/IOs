import Foundation

// Función que ordena un array de enteros usando el método de selección
func ordenarPorSeleccion(_ array: inout [Int]) {
    guard array.count > 1 else { return } // Si el array tiene 0 o 1 elemento, ya está ordenado
    
    let cantidadElementos = array.count // Número total de elementos en el array
    
    // Iterar sobre cada posición en el array, exceptuando la última
    for indiceActual in 0..<cantidadElementos-1 {
        var indiceMenor = indiceActual // Suponemos inicialmente que el menor elemento está en la posición actual
        
        // Comparar el elemento en la posición actual con los elementos restantes
        for indiceComparacion in indiceActual+1..<cantidadElementos {
            if array[indiceComparacion] < array[indiceMenor] {
                // Si encontramos un elemento menor, actualizar el índice del menor elemento
                indiceMenor = indiceComparacion
            }
        }
        
        // Si encontramos un elemento menor en una posición distinta a la posición actual, intercambiamos
        if indiceMenor != indiceActual {
            array.swapAt(indiceActual, indiceMenor)
        }
    }
}

// Función que realiza una búsqueda binaria recursiva en un array de enteros
func busquedaBinariaRecursiva(_ array: [Int], _ valor: Int, inicio: Int, fin: Int) -> Int? {
    // Verificar si el array está ordenado
    var esOrdenado = true
    for indice in 0..<array.count - 1 {
        // Si encontramos dos elementos en el array que no están en orden ascendente, el array no está ordenado
        if array[indice] > array[indice + 1] {
            esOrdenado = false
            break
        }
    }

    // Si el array no está ordenado, se ordena usando el método de selección
    if !esOrdenado {
        print("El array no está ordenado. Ordenando...")
        // Añadir una pausa de 1 segundo (1000 ms) para simular el tiempo de procesamiento
        sleep(1)
        var arrayOrdenado = array
        ordenarPorSeleccion(&arrayOrdenado) // Ordenar el array
        print("Array ordenado por selección:", arrayOrdenado)
        // Llamar recursivamente a la función de búsqueda binaria con el array ordenado
        return busquedaBinariaRecursiva(arrayOrdenado, valor, inicio: 0, fin: arrayOrdenado.count - 1)
    }

    // Verificar si los límites del rango de búsqueda son válidos
    if inicio > fin {
        return nil // El valor no se encuentra en el rango especificado
    }

    // Calcular el índice medio del rango de búsqueda
    let indiceMedio = (inicio + fin) / 2

    // Comparar el valor buscado con el elemento en el índice medio
    if array[indiceMedio] == valor {
        return indiceMedio // Valor encontrado en el índice medio
    } else if valor < array[indiceMedio] {
        // Si el valor es menor que el elemento en el índice medio, buscar en la mitad izquierda
        return busquedaBinariaRecursiva(array, valor, inicio: inicio, fin: indiceMedio - 1)
    } else {
        // Si el valor es mayor que el elemento en el índice medio, buscar en la mitad derecha
        return busquedaBinariaRecursiva(array, valor, inicio: indiceMedio + 1, fin: fin)
    }
}

var arrayDesordenado = [-2, 1, -5, 5, 11, 1, 15, 19, 7, 13]
let valorBuscado = 11

if let resultado = busquedaBinariaRecursiva(arrayDesordenado, valorBuscado, inicio: 0, fin: arrayDesordenado.count - 1) {
    print("El valor \(valorBuscado) se encontró en la posición \(resultado).")
} else {
    print("El valor \(valorBuscado) no se encontró en el array.")
}
