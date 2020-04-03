//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

struct Employee: Equatable, Comparable{
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
    static func <(lhs: Employee, rhs: Employee) -> Bool {
        return lhs.lastName < rhs.lastName
    }
    // No es necesario definir los otros operadores
    // >
    // >=
    // <=
}
struct Company {
    var name: String
    var employees: [Employee]
}
let currentEmployee = Employee(firstName:"Jacob", lastName: "Edwards", jobTitle: "Director", phoneNumber: "415-222-4452")
let storedEmployee = Employee(firstName:"Jacob", lastName: "Edwards", jobTitle: "Manager", phoneNumber: "415-222-44442")
// Probar el Equatable
if currentEmployee == storedEmployee {
    print("Los empleados son iguales")
}
else{
    print("Los empleados no son los mismos")
}
// Probar Comparable
let empoyee1 = Employee(firstName:"Jacob", lastName: "Edwards", jobTitle: "Director", phoneNumber: "415-222-4452")
let empoyee2 = Employee(firstName:"Marduk", lastName: "Perez", jobTitle: "Manager", phoneNumber: "415-222-4452")
let empoyee3 = Employee(firstName:"Sara", lastName: "Zuen", jobTitle: "Manager", phoneNumber: "415-4422-4452")
let empoyee4 = Employee(firstName:"Richel", lastName: "Abersef", jobTitle: "Counter Manager", phoneNumber: "415-222-43332")
let company = Company(name:"Plastic C.O", employees:[empoyee1,empoyee2,empoyee3,empoyee4])

print(company.employees)
let storedEmployee2 = company.employees.sorted(by: <)

print ("Ordenados: \(storedEmployee2)")
//: [Next](@next)
