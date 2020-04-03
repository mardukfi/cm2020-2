import UIKit
var str = "Hello, playground"
// Protocolos
//print(str)
class Shoe: CustomStringConvertible {
    var description: String {
        return "Shoe (color: \(color), size: \(size), hasLaces: \(hasLaces)"
    }
    let color: String
    let size: Int
    let hasLaces: Bool
    init(color:String, size:Int, hasLaces:Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}
let myShoe = Shoe(color: "Black", size: 19, hasLaces: true)
print(myShoe)
