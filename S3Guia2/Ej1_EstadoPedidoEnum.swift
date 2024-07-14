import Foundation

// Paso 1: Enumeración EstadoPedido
enum EstadoPedido {
    case procesando
    case enviado
    case entregado
}

// Paso 2: Protocolo NotificacionPedido
protocol NotificacionPedido: AnyObject {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido)
}

// Paso 3: Clase Pedido
class Pedido {
    // Propiedad para el estado del pedido
    var estado: EstadoPedido {
        didSet {
            // Notificar al delegado sobre el cambio de estado
            delegado?.notificarCambioDeEstado(nuevoEstado: estado)
        }
    }
    
    // Propiedad para el delegado
    weak var delegado: NotificacionPedido?
    
    // Inicializador
    init(estadoInicial: EstadoPedido, delegado: NotificacionPedido?) {
        self.estado = estadoInicial
        self.delegado = delegado
    }
    
    // Función para cambiar el estado
    func cambiarEstado(nuevoEstado: EstadoPedido) {
        self.estado = nuevoEstado
    }
}

class Notificador: NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) {
        switch nuevoEstado {
        case .procesando:
            print("El pedido está siendo procesado.")
        case .enviado:
            print("El pedido ha sido enviado.")
        case .entregado:
            print("El pedido ha sido entregado.")
        }
    }
}

// Crear un notificador
let notificador = Notificador()

// Crear un pedido con estado inicial 'procesando' y asignar el delegado
let pedido = Pedido(estadoInicial: .procesando, delegado: notificador)

// Cambiar el estado del pedido
pedido.cambiarEstado(nuevoEstado: .procesando)
pedido.cambiarEstado(nuevoEstado: .enviado)
pedido.cambiarEstado(nuevoEstado: .entregado)
