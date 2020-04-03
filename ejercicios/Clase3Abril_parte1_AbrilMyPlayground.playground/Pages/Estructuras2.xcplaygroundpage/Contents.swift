//: [Previous](@previous)

import Foundation

struct Person {
    var name: String
    func sayHello() {
        let name = "Pablo"
        print("Hello there! My name is \(self.name), and my friend is \(name)")
    }
}
var person = Person(name: "Marduk")
person.sayHello()


//: [Next](@next)
