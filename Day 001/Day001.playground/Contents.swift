import UIKit

var greeting = "Day 001"

var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"
print(favoriteShow)

var meaningOfLife = 42
//meaningOfLife = "Forty two"

var quote = "Change the world by being yourself"
var burns = """
The best laid schemes
O’ mice and men
Gang aft agley
"""
print(burns)

var myInt = 1
var myDouble = 1.0
//let total = myInt + myDouble

var city = "Cardiff"
var message = "Welcome to \(city)!"
print(message)

let percentageDouble: Double = 99
let percentageInt = 99

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
