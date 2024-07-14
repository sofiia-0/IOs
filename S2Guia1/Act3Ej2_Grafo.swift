import Foundation

class Grafo {
    var listaAdyacencia: [Int: [Int]] = [:]
    
    // Inicializa un grafo con el número de vértices especificado
    init(numVertices: Int) {
        for indiceVertice in 0..<numVertices {
            listaAdyacencia[indiceVertice] = []
        }
    }
    
    // Agrega una arista entre dos vértices
    func agregarArista(ver1: Int, ver2: Int) {
        listaAdyacencia[ver1]?.append(ver2)
        listaAdyacencia[ver2]?.append(ver1) // Si el grafo es no dirigido
    }
    
    // Realiza una búsqueda desde el nodo de inicio
    func realizarDFS(nodoInicio: Int) -> [Int] {
        var nodosVisitados = Set<Int>()
        var recorridoEnProfundidad: [Int] = []
        
        func dfsRecursivo(nodoActual: Int) {
            nodosVisitados.insert(nodoActual)
            recorridoEnProfundidad.append(nodoActual)
            
            // Recurre por todos los nodos adyacentes no visitados
            if let vecinos = listaAdyacencia[nodoActual] {
                for vecino in vecinos {
                    if !nodosVisitados.contains(vecino) {
                        dfsRecursivo(nodoActual: vecino)
                    }
                }
            }
        }
        
        // Comienza la búsqueda desde el nodo de inicio
        dfsRecursivo(nodoActual: nodoInicio)
        return recorridoEnProfundidad
    }
}

// Crear un grafo con 5 vértices (0 a 4)
let grafo = Grafo(numVertices: 5)

// Agregar aristas al grafo
grafo.agregarArista(ver1: 0, ver2: 1)
grafo.agregarArista(ver1: 0, ver2: 4)
grafo.agregarArista(ver1: 1, ver2: 2)
grafo.agregarArista(ver1: 1, ver2: 3)
grafo.agregarArista(ver1: 2, ver2: 3)
grafo.agregarArista(ver1: 3, ver2: 4)

// Realizar DFS desde el nodo 0
let recorridoDFS = grafo.realizarDFS(nodoInicio: 0)
print("Recorrido DFS desde el nodo 0: \(recorridoDFS)")
