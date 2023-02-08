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


// If statements
let speed = 88
if speed > 55 {
    print("Too fast!")
}

let array = [String]()
if array.isEmpty {
    print("Empty!")
} else if array.count == 1 {
    print("One!")
} else {
    print("Heaps!")
}

// Use && to add conditions
// Use || for or conditions

// Switch statements
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
    fallthrough // try the next case as well
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

// Ternary Operator
let currentAge = 18
let canVote = currentAge >= 18 ? "Yes" : "No"

// For loops
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<12 {
    print("5 x \(i) is \(5 * i)")
}

// While loops
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

// Checkpoint 3
print("Checkpoint 3")
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}

// Functions
// Use tuples to return multiple pieces of data.
// Their contents are guaranteed which is good.
func test(output: String, times: Int = 1) -> (input: String, count: Int, output: String) {
    let newString = String(repeating: output, count:2)
    return (output, times, newString)
}
let (_, _, output) = test(output: "Wooooh", times: 2) // Use _ to indicate a return value you don't want.
print(output)

// Errors
enum NumberError: Error {
    case big, small
}
func checkNumberSize(_ number: Int) throws -> String {
    if number > 15 {
        throw NumberError.big
    }
    
    if number < 5 {
        throw NumberError.small
    }
    
    return "just right"
}

for i in 1...20 {
    do {
        let result = try checkNumberSize(i)
        print("\(i) is \(result)")
    } catch NumberError.small {
        print("\(i) is too small")
    } catch NumberError.big {
        print("\(i) is too big")
    } catch {
        print("There was an error")
    }
}

// Checkpoint 4
enum BoundsError: Error {
    case outOfBounds
}
enum RootError: Error {
    case noRoot
}
func getSquareRoot(of number: Int) throws -> Int {
    if number > 10000 || number < 1 {
        throw BoundsError.outOfBounds
    }
    
    for i in 1...number {
        if number / i == i {
            return i
        }
    }
    
    throw RootError.noRoot
}

do {
    let number = 81
    let result = try getSquareRoot(of: number)
    print("The square root of \(number) is \(result)")
} catch RootError.noRoot {
    print("No root could be found.")
} catch BoundsError.outOfBounds {
    print("Test number was out of bounds.")
} catch {
    print("An error occurred")
}

// Copy a function
var copyOfGetSquareRoot = getSquareRoot

// Closures
let sayHello = { (name: String) -> String in
    "Hello there, \(name)!"
}
sayHello("Finn")

// Sorted Closure Example
// Suzanne is the captain so she is always put
// first. Otherwise, alphabetical sort.
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// This can be done more simply like so:
//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//})

// Because sorted _requires_ two strings as arguments
// and returns a bool, we don't need to specify.
// We can also directly start the closure statement
// and use variables defined by Swift instead
// of our own.
// This is called trailing closure syntax.
//let captainFirstTeam = team.sorted {
//    if $0 == "Suzanne" {
//        return true
//    } else if $1 == "Suzanne" {
//        return false
//    }
//
//    return $0 < $1
//}

// .filter is also another powerful use
// of closures.
let teams = ["Blake", "Ngata", "Cooper", "Britten", "Rutherford"]
let aOnly = teams.filter { $0.contains("a") }
print(aOnly)

// .map allows you to act on every item in
// an array
print(teams.map { $0.uppercased() })

// It is possible to pass functions as arguments to
// other functions.
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}
print(doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
})

// Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
luckyNumbers
    .filter { !$0.isMultiple(of: 2) }
    .sorted { $0 < $1 }
    .map { print("\($0) is a lucky number") }

// Structs
struct Employee {
    // These are properties
    let name: String
    var vacationAllocated: Int
    var vacationTaken = 0
    // Simple version
//    var vacationRemaining: Int {
//        vacationAllocated - vacationTaken
//    }
    // Using get and set
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }

    // This is a method
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationTaken += days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}
var archer = Employee(name: "Sterling Archer", vacationAllocated: 14) // An instance of Employee
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

// Observers
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

// Custom struct initializers
struct Player {
    let name: String
    private(set) var number: Int // Read only

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)

// Static properties and methods
// These are attached to the root
// struct, not individual instances
// and can be accessed without
// instantiating instance.
// A good use of these is AppData
// which can be accessed anywhere.
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
print(School.studentCount)

// You can use static data to create
// seed test examples of structs.
//struct Employee {
//    let username: String
//    let password: String
//
//    static let example = Employee(username: "cfederighi", password: "hairforceone")
//}
// Exmployee.example

// Checkpoint 6
struct Car {
    let model: String
    let seats: Int
    private(set) var gear: Int = 1
    mutating func changeGear(by num: Int) {
        if self.gear + num > 5 || self.gear + num < 1 {
            print("Couldn't change gear from \(self.gear) to \(self.gear + num)")
            return
        }
        
        self.gear += num
        print("Changed gear to \(self.gear)")
    }
}

var myCar = Car(model: "Corolla", seats: 5)
print(myCar.gear)
myCar.changeGear(by: 1)
print(myCar.gear)
myCar.changeGear(by: 4)

// Classes
// Extend other classes
// Write your own initializer
// Copying a class shares data between them
// Runs a deinitializer when last
// copy is destroyed
// Can change it's properties
// use the keyword 'final' if a class
// should not be inherited from
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
    
    init(score: Int = 0) {
        self.score = score
    }
    
    func whoami() {
        print("I am a game!")
    }
    
    // To be able to copy a class
    // and alter it without affecting
    // the original class, you need a
    // copy method.
    func copy() -> Game {
        let game = Game()
        game.score = score
        return game
    }
    
    // Deinitializers get called when
    // the final copy of a class is
    // destroyed. They are called
    // automatically.
    deinit {
        print("Ded")
    }
}

var newGame = Game()
newGame.score += 10

class Level: Game {
    let isHard: Bool
    
    // Must include arguments required
    // by the parent class.
    // If no initializer exists on subclass,
    // it inherits that of super.
    init(score: Int = 0, isHard: Bool = false) {
        self.isHard = isHard
        super.init(score: score) // Send score to parent class
    }
    
    func play() {
        print("I'm playing a level in a game!")
    }
    
    override func whoami() {
        print("I am a level!")
    }
}
var level1 = Level(score: 8, isHard: true)
level1.score += 8

newGame.whoami()
level1.whoami()

// Checkpoint 7
class Animal {
    let legs: Int = 4
}

class Dog: Animal {
    func speak() {
        print("Woof woof!")
    }
}

class Cat: Animal {
    let isTame: Bool
    init(isTame: Bool = true) {
        self.isTame = isTame
    }
    func speak() {
        print("Meow")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Grrrr")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Bark!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Purrrr")
    }
}

class Lion: Cat {
    override func speak() {
        print("Yeow!")
    }
}

let myCorgi = Corgi()
myCorgi.speak()

let myLion = Lion(isTame: false)
myLion.speak()

// Protocols
// A shorthand for a class, kind of.
// Define the properties/methods that
// a data structure should have, but
// don't put any code  behind it.
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
    
    // Propterties can be defined like
    // this with get/set for r/w.
    var model: String { get }
}

// Now we can make a data structure
// that conforms to the Vechile protocol.
struct Truck: Vehicle {
    let model: String
    func estimateTime(for distance: Int) -> Int {return 1}
    
    func travel(distance: Int) {}
    
    // The protocol only defines the
    // minimum functionality of the
    // data structure. You can add
    // other things.
    func otherFunction() {}
}

struct Bike: Vehicle {
    let model: String
    func estimateTime(for distance: Int) -> Int {return 1}
    func travel(distance: Int) {}
}

// Any type that conforms to protocol Vehicle
// can be passed to this function.
func commute(distance: Int, using vehicle: Vehicle) {
    // do commute
}

let truck = Truck(model: "Hilux")
commute(distance: 100, using: truck)

let bike = Bike(model: "Venge Pro")
commute(distance: 10, using: bike)

// Opaque return types
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}
func getRandomBool() -> some Equatable {
    Bool.random()
}
// Both these functions conform
// to a protocol "Equatable"
// but you cannot -> Equatable as
// a return type directly.
// You can return protocols, and
// it is very useful because you
// can return functionality instead
// of just a type.
// To return a protocol use keyword
// "some".
// This gets used to return views in
// SwiftUI so you don't need to state
// the whole long view type in a
// return statement. Just use "some View".

// Extensions
// These let us add functionality
// to existing types, even Apple
// first-party ones.
// They are global and better
// than writing a locally scoped
// function.
extension String {
    func trimmed() -> String {
        // Self refers to the current string
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    // This mutates the string in place
    // without needing to create a new copy.
    // The suffix -ed should create a new
    // copy, while without should alter
    // in-place.
    mutating func trim() {
        self = self.trimmed()
    }
    
    // Computed properties can also be added.
    // But, not static properties.
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines)

// Protocol Extensions
// Array, Set and Dictionary all
// conform to the Collection protocol.
extension Collection {
    var isNotEmpty: Bool {
        // isEmpty is a property required
        // by the Collection protocol, so
        // we can just access it like this.
        isEmpty == false
    }
}

extension Numeric {
    // In this case -> Self means the
    // extension returns it's own type
    // which in this case is a type that
    // conforms to the Numeric protocol.
    // -> some Numeric could also be used.
    func cubed() -> Self {
        self * self * self
    }
}
let wholeNumber = 7.5
print(wholeNumber.cubed())

// Checkpoint 8
protocol Building {
    var rooms: Int {get}
    var cost: Int {get}
    var estateAgent: String {get}
    func summary()
}

struct House: Building {
    let rooms: Int
    let cost: Int
    let estateAgent: String
    func summary() {
        print("The house has \(self.rooms) rooms, costs \(self.cost) and is being sold by \(self.estateAgent).")
    }
}

struct Office: Building {
    let rooms: Int
    let cost: Int
    let estateAgent: String
    func summary() {
        print("The office has \(self.rooms) rooms, costs \(self.cost) and is being sold by \(self.estateAgent).")
    }
}

var house = House(rooms: 3, cost: 450_000, estateAgent: "Finn Le Sueur")
house.summary()

var office = Office(rooms: 24, cost: 1_500_000, estateAgent: "Finn Le Sueur")
office.summary()
