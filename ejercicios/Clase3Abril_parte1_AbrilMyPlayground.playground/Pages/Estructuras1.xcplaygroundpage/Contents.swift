import UIKit

var str = "Hello, playground"

struct Person {
    var name: String
    func sayHello() {
        print("Hello there!")
    }
}
var person = Person(name: "Marduk")
var person2 = Person.init(name: "Paola")
person.name = "Pablo"
person.name

var lastName = ""
var lastName2 = String()
var lastName3 = String.init()
// struct Int {

var number = 3
var number2 = Int()
var number3 = Int.init()
/*
 struct Int {
   var number
   init (){
    number = 0
   }
 }
 */

