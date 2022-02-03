import UIKit

var greeting = "Hello, playground"


func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { place in
    print("I'm going to \(place) in my car")
}

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
    print("Name is: \(name)")
    engine(89)
}

buildCar(name: "Ferrari", engine: changeSpeed)


func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// MARK: EXAMPLE
print("**************************************************")
func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    // start with a total equal to the first value
    var current = values[0]
    print(current)
    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        print("El value es \(value)")
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
        print(current)
    }
    print(current)
    // send back the final current value
    return current
}

let numbers = [10, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}
print("**************************************************")
print(sum)

let reduction = numbers.reduce(0, +)
print(reduction)

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel { place in
    "I'm going to \(place) in my car"
}

travel {
    "I'm going to \($0) in my car"
}
