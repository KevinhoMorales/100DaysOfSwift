import UIKit

var greeting = "Hello, playground"

let isAdmin = true
let isOwner = false
let isEditingEnabled = false

isOwner == true && isEditingEnabled || isAdmin == true
print(isOwner)

let name = "Otis"

if name == "Maeve" {
    print("Hello, Maeve!")
}

func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}

func greet2(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

print(greet(name: "Taylor Swift"))

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print(user[0])

func getUser2() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}

let user2 = getUser2()
print(user2["first"])

func getUser3() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user3 = getUser3()
print(user3.first)

func setReactorStatus(primaryActive: Bool, backupActive: Bool, isEmergency: Bool) {
    // code here
}

setReactorStatus(primaryActive: true, backupActive: true, isEmergency: false)


func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}

setAge(for: "Kevinho", to: 27)

func setAge2(para: String, to: Int) {
    print("\(para) is now \(to)")
}

setAge2(para: "Madison", to: 77)

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // code here
}

findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)
findDirections(from: "London", to: "Glasgow", avoidHighways: true)

//open("photo.jpg")
//open("photo.jpg", "recipes.txt", "myCode.swift")

//do {
//    try throwingFunction1()
//    nonThrowingFunction1()
//    try throwingFunction2()
//    nonThrowingFunction2()
//    try throwingFunction3()
//} catch {
//    // handle errors
//}

//func +(leftNumber: Int, rightNumber: Int) -> Int {
//    // code here
//    5 + 3
//}

//func +=(leftNumber: inout Int, rightNumber: Int) {
//    // code here
//}
