import Foundation

func calcularEstadisticas(_ array: [Int]) -> (Double, Double, Int?) {
    
    // Calcular media
    let suma = Double(array.reduce(0, +))
    let conteo = Double(array.count)
    let media = suma / conteo
    
    // Calcular mediana
    let arrayOrdenado = array.sorted()
    let mediana: Double
    let mitad = conteo / 2
    if conteo.truncatingRemainder(dividingBy: 2) == 1 {
        mediana = Double(arrayOrdenado[Int(mitad)])
    } else {
        mediana = (Double(arrayOrdenado[Int(mitad - 1)]) + Double(arrayOrdenado[Int(mitad)])) / 2
    }
    
    // Contar la frecuencia de cada número
    var frecuencias = [Int: Int]()
    for numero in array {
        frecuencias[numero, default: 0] += 1
    }
    
    // Encontrar la frecuencia máxima
    let maxFrecuencia = frecuencias.values.max() ?? 0
    
    // Encontrar los números con la frecuencia máxima
    let modas = frecuencias.filter { $0.value == maxFrecuencia }.keys
    
    // Determinar la moda: devuelve el único número si hay una sola moda, o nil si hay más de una
    let moda: Int? = modas.count == 1 ? modas.first : nil

    return (media, mediana, moda)
}

let arrayNumeros = [1, 2, 2, 3, 4, 4, 4, 5]
let resultado = calcularEstadisticas(arrayNumeros)
print("Media > \(resultado.0)")
print("Mediana > \(resultado.1)")
print("Moda > \(resultado.2 != nil ? "\(resultado.2!)" : "No hay moda única")")
