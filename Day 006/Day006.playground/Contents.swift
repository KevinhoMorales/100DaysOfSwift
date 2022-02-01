import UIKit

var greeting = "Hello, playground"


func pay(user: String, amount: Int) {
    // code
}

let payment = { (user: String, amount: Int) in
    // code
}

//var paymentTuple = (user: String, amount: Int)


let payment2 = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

print(payment2())


func animate(duration: Double, animations: (Double) -> Void) {
    print("Starting a \(duration) second animation…")
    animations(duration)
}

animate(duration: 14.0) { dob in
    print("This is \(dob)")
}
