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


//
let degreesC = 25
let degreesF = ((degreesC * 9) / 5) + 32
print("\(degreesC)C is equal to \(degreesF)F")
