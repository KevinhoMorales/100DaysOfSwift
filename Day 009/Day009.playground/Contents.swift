import UIKit

var greeting = "Hello, playground"

struct User {
    var username: String

    init() {
        username = "Anonymous"
//        print("Creating a new user!")
    }
}

var user = User()
user.username
//print(user.username)

user.username = "Kevinho"
//print(user.username)

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
//        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")
//print(roslin.name)
// as does creating an anonymous employee
let anon = Employee()
//print(anon.name)

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
//        print("\(name) was born!")
    }
}

let person = Person(name: "Kevin")
print(person.name)

struct Student {
    var name: String
    var bestFriend: String

    init(name studentName: String, bestFriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class…")
        name = studentName
        bestFriend = studentBestFriend
    }
}

let student = Student(name: "Madison", bestFriend: "Jimena")
print("\(student.bestFriend) is a best friend!")


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct PersonLazy {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = PersonLazy(name: "Ed")
ed.familyTree


struct Student2 {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student2.classSize += 1
    }
}

let edy = Student2(name: "Edy")
let taylor = Student2(name: "Taylor")
let peter = Student2(name: "Peter")

print(Student2.classSize)

struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
}

var entropy = Int.random(in: 1...1000)

func getEntropy() -> Int {
    entropy += 1
    return entropy
}

struct Person3 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let person3 = Person3(id: "1717893901")
print(person3.identify())
