//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// JSON
struct Employee: Codable{
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
}
let empoyee1 = Employee(firstName:"Jacob", lastName: "Edwards", jobTitle: "Director", phoneNumber: "415-222-4452")

let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(empoyee1) {
    print(jsonData)
    let jsonString = String(data: jsonData, encoding: .utf8)
    print(jsonString!)
}
else{
    print("Error al codificar")
}



