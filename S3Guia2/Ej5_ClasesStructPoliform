import Foundation

// Paso 1: Protocolo Empleado
protocol Empleado {
    func calcularSalario() -> Double
}

// Paso 2: Clase EmpleadoBase que conforma al protocolo Empleado
class EmpleadoBase: Empleado {
    var salarioMensual: Double
    
    init(salarioMensual: Double) {
        self.salarioMensual = salarioMensual
    }
    
    // Implementación del método para calcular el salario de un empleado base
    func calcularSalario() -> Double {
        return salarioMensual
    }
}

// Paso 3: Estructura EmpleadoContrato que conforma al protocolo Empleado
struct EmpleadoContrato: Empleado {
    var tarifaPorHora: Double
    var horasTrabajadas: Double
    
    // Implementación del método para calcular el salario de un empleado por contrato
    func calcularSalario() -> Double {
        return tarifaPorHora * horasTrabajadas
    }
}

// Paso 4: Función para calcular el salario total de todos los empleados
func calcularSalarioTotal(empleados: [Empleado]) -> Double {
    var salarioTotal: Double = 0.0
    
    // Iterar sobre cada empleado en el array
    for empleado in empleados {
        salarioTotal += empleado.calcularSalario()
    }
    
    return salarioTotal
}

// Ejemplo de uso
let empleadoBase = EmpleadoBase(salarioMensual: 3000) // Crear una instancia de EmpleadoBase
let empleadoContrato = EmpleadoContrato(tarifaPorHora: 20, horasTrabajadas: 100) // Crear una instancia de EmpleadoContrato

// Crear un array de empleados que contiene ambos tipos de empleados
let empleados: [Empleado] = [empleadoBase, empleadoContrato]

// Calcular el salario total de todos los empleados en el array
let salarioTotal = calcularSalarioTotal(empleados: empleados)
print("Salario total de todos los empleados: \(salarioTotal)")  // Salida: Salario total de todos los empleados: 4200.0
