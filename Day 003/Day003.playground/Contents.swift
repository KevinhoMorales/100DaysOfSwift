import UIKit

var greeting = "Hello, playground"

let value: Double = 90000000000000001
print(value)
let value2: Int = 90000000000000001
print(value2)


let weeks = 465 / 7
print("There are \(weeks) weeks until the event.")

let weeks2: Double = 465 / 7
print("There are \(weeks2) weeks until the event.")

let weeks3 = 465 / 7
let days = 465 % 7
print("There are \(weeks3) weeks and \(days) days until the event.")

let number = 465
let isMultiple = number.isMultiple(of: 7)
print(isMultiple)

let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

let score = 9000

if score > 9000 {
    print("It's over 9000!")
}

if score <= 9000 {
    print("It's not over 9000!")
}

if score > 9000 {
    print("It's over 9000!")
} else {
    if score == 9000 {
        print("It's exactly 9000!")
    } else {
        print("It's not over 9000!")
    }
}

let isOwner = true
let isAdmin = true

if isOwner == true || isAdmin == true {
    print("You can delete this post")
}

let isAuthenticated = true

if isAuthenticated {
    print("Welcome")
} else {
    print("Who are you?")
}
print(isAuthenticated ? "Welcome!" : "Who are you?")

let names = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names[0])
print(names[1...3])
print(names[1...])
