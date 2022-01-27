import UIKit

var greeting = "Hello, playground"

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent")
}

let names2 = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names2 {
    print("[CENSORED] is a secret agent!")
}

let numbers = [1, 2, 3, 4, 5]
var random = numbers.shuffled()
print(random)

while random == numbers {
    random = numbers.shuffled()
}
print(random)


let numbers2 = [1, 2, 3, 4, 5]
var random2: [Int]

repeat {
    random2 = numbers2.shuffled()
} while random2 == numbers2

print(random2)


let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }

    count += 1
}

print("You had \(count) scores before you got 0.")

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

//for option1 in options {
//    for option2 in options {
//        for option3 in options {
//            print("In loop")
//            let attempt = [option1, option2, option3]
//
//            if attempt == secretCombination {
//                print("The combination is \(attempt)!")
//            }
//        }
//    }
//}

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

// MARK: INFINITE
//while true {
//    print("I'm alive!")
//}
//
//print("I've snuffed it!")

var isAlive = false

while isAlive == true {
    print("I'm alive!")
}

print("I've snuffed it!")

for name in ["Taylor"] {
    print("Welcome, \(name)!")
}
