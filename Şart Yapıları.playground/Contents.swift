import UIKit

var greeting = "Hello, playground"

// Type annotations

//standart way to assign values
var name = "Arda" //* swift can figure out the data type based on what we assigned
var age = 25
var isTrue = false

let firstName: String = "Arda"
var score: Double = 0
var albums: [String] = ["Red","Fearless"]
var names: [String] = [] // an empty string array

enum UIStyle{
    case light,dark,system
}
let style: UIStyle = .dark

// checkpoint
let actors = Set(["Arda","John","Will","Henry","Robert","Matt"])
print(actors.count)

// if conditions
let userScore = 88
if userScore > 85 {
    print("High score!")
}

let speed = 88
let percentage = 85
let userAge = 18

if speed >= 88 {
    print("Where we're going we don't need roads!")
}
if percentage < 85{
    print("Sorry, you need to study more.")
}

if userAge >= 18 {
    print("You are allowed to drive.")
}

let ourName = "Arda"
let friendName = "Hamza"
if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}
if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

score = 90000
if score > 10_0000{
    print("It's over 10.0000")
}
else if score == 10_0000{
    print("It's exatcly 10.0000")
}
else{
    print("It' less than 10.0000")
}
