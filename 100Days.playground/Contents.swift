/**
 This playground is me learning SwiftUI
 via HackingWiith Swift
 https://www.hackingwithswift.com/100/swiftui
 
 Author: Finn Le Sueur
 */

import Cocoa

// ==========
//  Days 1-2
// ==========
var greeting = "Kia ora, koutou!"

// Variables can change
var age = 28
age = 29

// Constants are static
let name = "Finn Le Sueur"

print(name)

// camelCase variables are standard
// Prefer constants over variables where possible

let quote = "The quote is \"He waka eke noa\""
let multilineQuote = """
This is
a multiline quote
"""
print(multilineQuote.count)
print(multilineQuote.uppercased())
print(multilineQuote.hasPrefix("This"))
print(multilineQuote.hasSuffix("end"))

// Integers
let myAge = 29
let myAgeDays = 10_598

// Arithmetic
// - + * /
// += -= /= *=
print(myAge.isMultiple(of: 3))

// Ints and doubles can't be mixed
print(Int(2.0)+1)
print(2.0+Double(1))

// Booleans
let dogIsGood = true
var sad = false
print(sad)
sad = !sad
print(sad)
sad.toggle()
print(sad)

// Adding strings
greeting = "Kia ora" + ", " + "koutou"
print("Kia ora, \(name)")
print("You are \(myAgeDays/365) years old")


// Checkpoint 1
let degreesC = 25
let degreesF = ((degreesC * 9) / 5) + 32
print("\(degreesC)C is equal to \(degreesF)F")


// ==========
//  Days 3-4
// ==========

// Ordered Arrays
var splitGreeting = ["Kia", "ora", "koutou"]
var ages = [29, 29]
var temperatures = [25.5, 26.2, 27.0]
print(temperatures[2])
temperatures.append(22.2)
print(temperatures[3])

var scores = Array<Int>()
scores.append(20)
scores.append(10)
print(scores)

// Shorthand for initialising arrays
var simpleScores = [Int]()
print(scores.count)
scores.remove(at: 1)
print(scores)
scores.removeAll()
print(scores)
scores.append(20)
print(scores.contains(20))
scores.append(10)
print(scores.sorted())
print(scores.reversed())

// Dictionaries
var me = [
    "name": "Finn Le Sueur",
    "job": "Teacher"
]
print(me["name"])
// optionals: “you might get a value back, but you might get back nothing at all.”
// “Expression implicitly coerced from 'String?' to 'Any’” means it might not exist
// provide a default value to avoid this
print(me["name", default: "Finn Le Sueur"])

// Create empty dictionaries by specifying types
var you = [String: String]()

// Sets
// Unordered, unique values
// Use .insert() to add new values
// .contains(), .count() and .sorted() also exist
var people = Set(["You", "Me", "Me"])
print(people)

// Enums
enum Weekday {
    case Monday, Tuesday, Wednesday, Thursday, Friday
}

var day = Weekday.Monday
day = .Friday
print(day)

// Type annotations
let age2: Int = 29

// Checkpoint 2
var items = [String]()
items.append("One")
items.append("Two")
items.append("Three")
items.append("One")
print("The variable 'items' contains \(items.count) elements")
print("The variable 'items' contains \(Set(items).count) unique elements")

