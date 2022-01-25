import UIKit
import Foundation

var greeting = "Hello, playground"

// MARK: SETS are unordered and cannot contain duplicates, whereas ARRAYS retain their order and can contain duplicates.
let arrayOfBlogCategories: [String] = ["Swift", "Debugging", "Xcode", "Workflow", "Optimization"]
var setOfBlogCategories: Set<String> = ["Swift", "Swift", "Xcode", "Swift", "Optimization"]
print(arrayOfBlogCategories)
print(setOfBlogCategories)
let (inserted, memberAfterInsert) = setOfBlogCategories.insert("Dart")
if !inserted {
    print("\(memberAfterInsert) already exists")
} else {
    print("\(memberAfterInsert) doesn't exists")
}

var websiteTupla = (name: "Apple", url: "www.apple.com", code: 404)
print(websiteTupla.name)
print(websiteTupla.code)

var websiteArray = ["Apple", "www.apple.com", "404"]
print(websiteArray[0])
print(websiteArray[2])

var person = (name: "Paul", age: 40, isMarried: true)

var myDictionary = ["One": 1, "Two": 2, "Three": 3]
let one = myDictionary["One", default: 4]
print(one)

let names = ["Eleanor", "Chidi", "Tahani", "Jianyu", "Michael", "Janet"]

enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}

enum WeatherSample {
    case sunny
    case lightBreeze
    case aBitWindy
    case quiteBlusteryNow
    case nowThatsAStrongWind
    case thisIsSeriousNow
    case itsAHurricane
}

enum Mood {
    case happy
    case sad
    case grumpy
    case sleepy
    case hungry
}
let happy: Mood = .happy
print(happy)

enum MoodInt: Int {
    case happy
    case sad
    case grumpy
    case sleepy
    case hungry
}
let happyInt: MoodInt = .happy
print(happyInt.rawValue)

enum Result {
    case success(NSValue)
    case failure(Error)
}

extension Result {
    /// The error in case the result was a failure
    public var error: Error? {
        guard case .failure(let error) = self else { return nil }
        return error
    }

    /// The value in case the result was a success result.
    public var value: NSValue? {
        guard case .success(let value) = self else { return nil }
        return value
    }
}
let error = NSError(domain: "", code: 404, userInfo: nil)
let result: Result = .failure(error)
print(result.error?.localizedDescription ?? "")

enum ImageType {
    case jpeg
    case png
    case gif
}

let imageTypeToDescribe = ImageType.gif

var description = "The image type \(imageTypeToDescribe) is"

switch imageTypeToDescribe {
case .gif:
    description += " animatable, and also"
    fallthrough
default:
    description += " an image."
}

print(description) // The image type gif is animatable, and also an image.
