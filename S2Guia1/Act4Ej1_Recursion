import Foundation

// Función recursiva para calcular la suma de los primeros N números naturales
func sumaRecursiva(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else {
        return n + sumaRecursiva(n - 1)
    }
}

// Función iterativa para calcular la suma de los primeros N números naturales
func sumaIterativa(_ n: Int) -> Int {
    var suma = 0
    for i in 1...n {
        suma += i
    }
    return suma
}

let ejemploN = 5
let resultadoRecursivo = sumaRecursiva(ejemploN)
let resultadoIterativo = sumaIterativa(ejemploN)

print("Suma recursiva de los primeros \(ejemploN) números naturales: \(resultadoRecursivo)")
print("Suma iterativa de los primeros \(ejemploN) números naturales: \(resultadoIterativo)")
