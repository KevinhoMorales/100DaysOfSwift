import UIKit

var greeting = "Hello, playground"

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

struct Progress {
    var task: String
    var amount: Int {
        willSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
    
    mutating func change() {
        population = 56
    }
}

var london = City(population: 9_000_000)
london.collectTaxes()
london.population
london.change()
london.population


struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)

let string = "Do or do not, there is no try. ⛱"

print(string.count)
print(string.hasPrefix("Do or"))
print(string.uppercased())
print(string.sorted())


var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)
