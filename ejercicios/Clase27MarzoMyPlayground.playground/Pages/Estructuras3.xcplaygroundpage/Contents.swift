//: [Previous](@previous)

import Foundation

struct Car {
    var make: String
    var year: Int
    var topSpeed: Int
    var currentSpeed: Int
    var isClassic : Bool {
        if (year <= 1960) {
            return true
        }
        else {
            return false
        }
    }
    init(){
       //codigo suficiente para inicializar la estructura
       make = "Honda"
       year = 2010
       topSpeed = 120
       currentSpeed = 0
        
        
    }
    init(make: String, year: Int, topSpeed: Int){
        self.make = make
        self.year = year
        self.topSpeed = topSpeed
        currentSpeed = 0
        
    }
    mutating func accelerate(by amount: Int){
        currentSpeed += amount
    }
    
}
var car = Car()

var car2 = Car(make: "Nissan", year: 2018, topSpeed: 190)
var car3 = car2
car2.make = "Susuky"
car2
car3
car.accelerate(by: 30)
car.isClassic
car.year = 1959
car.isClassic

//: [Next](@next)
