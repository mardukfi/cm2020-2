//: [Previous](@previous)

import Foundation
// Property Observers
var str = "Hello, playground"
struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            print("Added \(totalSteps - oldValue ) steps")
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 20
stepCounter.totalSteps = 30

//: [Next](@next)
