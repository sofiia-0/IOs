import Foundation

func calcularAreaTriangulo(a: Double, b: Double, c: Double) -> Double? {
    // Validar si los lados forman un triángulo válido
    if a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a {
        print("Los lados ingresados no forman un triángulo válido")
        return nil
    }
    
    // Calcular semiperímetro
    let s = (a + b + c) / 2
    
    // Calcular área usando la fórmula de Herón
    let area = sqrt(s * (s - a) * (s - b) * (s - c))
    
    return area
}

if let area = calcularAreaTriangulo(a: 3, b: 4, c: 5) {
    print("El área del triángulo es \(area)")
} else {
    print("Los lados proporcionados no forman un triángulo válido")
}
