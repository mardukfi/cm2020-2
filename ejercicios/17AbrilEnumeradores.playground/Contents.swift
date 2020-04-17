import UIKit

var str = "Hello, playground"
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
for beverage in Beverage.allCases {
    print(beverage)
}

// Valores asociados
enum Barcode {
    case upc(Int,Int,Int,Int)
    case qrcode(String)
}
var product1 = Barcode.upc(8, 85909, 51226, 3)
var product2 = Barcode.qrcode("ABABSJDE0DEIDWECWLKCNLCHWECHQLNVLQWHVLQWHVWKWQKQNCLWEKCNWKLCJWIJWICWJC")
//product1
//product2
product1 = .qrcode("SDLPCKELVECVCWMWKLEJCWEJCWCEWCWC")
//product1
/*switch product1 {
case let .upc( numberSystem,  manufacturer,  product,  check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check) ")
    
case .qrcode(let productCode):
    print("QR: \(productCode)")
}*/

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let planet = Planet.mars
//planet.rawValue

// Enumerado recursivo

enum ArtihmeticExpression {
    case number(Int)
    indirect case addition(ArtihmeticExpression,ArtihmeticExpression)
    indirect case multiplication(ArtihmeticExpression,ArtihmeticExpression)
}
let number1 = ArtihmeticExpression.number(5)
let number2 = ArtihmeticExpression.number(4)

let sum = ArtihmeticExpression.addition(number1, number2)
let product = ArtihmeticExpression.multiplication(number1, number2)

func evaluate (_ expression: ArtihmeticExpression ) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, rigth):
        return evaluate(left) + evaluate(rigth)
    case let .multiplication(left, rigth):
        return evaluate(left) * evaluate(rigth)
    }
}
//print(evaluate(sum))
// logica de juego de batalla

enum Golpe {
    case golpeLeve(Int)
    case golpeMedio(Int)
    case golpeFuerte(Int)
    case golpeMortal
    // ? metodo
    
}
struct Arma {
    var tipoGolpe: Golpe?
}
struct Personaje {
    var vida = 100
    var fuerza = 100
}
var espada = Arma()
var guerrero = Personaje()

espada.tipoGolpe = .golpeMedio(4)
guerrero.vida
switch espada.tipoGolpe! {
case let .golpeLeve(puntos):
    guerrero.vida -= puntos
case let .golpeMedio(puntos):
    guerrero.vida -= puntos * 2
case let .golpeFuerte(puntos):
    guerrero.vida -= puntos * 4
case .golpeMortal :
    guerrero.vida = 0
}
guerrero.vida
