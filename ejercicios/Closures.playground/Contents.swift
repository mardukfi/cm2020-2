import UIKit

var str = "Hello, playground"

func sum(numbers: [Int]) -> Int {
    // codigo que hace la suma
    var total: Int = 0
    for number in numbers {
        total += number
    }
    return total
}
let suma = sum(numbers: [1,2,3,4])
//print(suma)

let sumClosure = { (numbers: [Int]) -> Int in
    // codigo que hace la suma
       var total: Int = 0
       for number in numbers {
           total += number
       }
       return total
}
let sumaClousure = sumClosure([1,2,3,4])
//print(sumaClousure)

// Closure pasado como argumento
let canciones = ["Zumbando", "Aires de la habana", "Por volverte a ver", "Cielito Lindo", "Eres para mi"]
// Sorted
///  func sorted ( by: (String,String) -> Bool ) {
//      logica de sorted
//      by

//   }
let cancionesOrganizadas = canciones.sorted{return $0<$1}

//print(cancionesOrganizadas)

let arregloNumerico = [2,35,45,1,0,3]
let arregloOrganizado = arregloNumerico.sorted { $0 < $1 }
//print(arregloOrganizado)

// map
let arregloIncrementado = arregloNumerico.map {$0 + 2}
//print(arregloIncrementado)
// Filter
let arregloFiltrado = arregloNumerico.filter {$0 < 10}
//print(arregloFiltrado)
// Reduce
let arregloReducido = arregloNumerico.reduce(0, {$0+$1})
//print(arregloReducido)
//
// Closure capturando el entorno
let name = "Marduk"

let greeting = {
    print("Don't panic \(name)")
}
greeting()

func addScore (_ points: Int) -> Int {
    let score = 42
   

    let calculate = {
        
        
        return score + points
    }
    
    return calculate()
}
let value = addScore(11)
print(value)











