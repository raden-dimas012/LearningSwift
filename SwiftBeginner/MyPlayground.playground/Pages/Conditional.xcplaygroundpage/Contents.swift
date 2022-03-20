//: [Previous](@previous)

import Foundation

// if statement
var learningToCode: Bool = true
learningToCode = false
if learningToCode {
  print("Don't forget to take breaks! You got this")
}

// if else statement
var wearGlasses: Bool = false

if wearGlasses {
  print("I wear glasses")
} else {
  print("I don't wear glasses")
}

//comparison operators
let tuneSquadPoints = 78
let monstarsPoints = 77

if tuneSquadPoints < monstarsPoints {
  print("You are the winners")
} else {
  print("You are the other winners")
}

// else if statement
var abbreviation: String = "ENG"

if abbreviation  == "ENG" {
  print("English")
} else if abbreviation == "SPN" {
  print("Spanish")
} else if abbreviation == "MAN" {
  print("Mandarin")
} else if abbreviation == "RUS" {
  print("Rusia")
} else {
  print("Abbreviation not found")
}

// ternary operation
var windy = true

if windy {
  print("Sails up")
} else {
  print("Motor on")
}

windy ? print("Sails up") : print("Motor on")

// switch statement
var secretIdentity = "Tony Stark"
var superheroName: String

switch secretIdentity {
  case "Tony Stark":
  superheroName = "Iron Man"
  case "Natasha Romanoff":
    superheroName = "Black Widow"
  case "Prince T'Challa":
   superheroName = "Black Panther"
  case "Thor":
    superheroName = "Thor"
  default:
    superheroName = "Unknown"
}

print(superheroName)

// switch with interval
var episode = 4
var villain: String

switch episode {
  case 1...3:
    villain = "Emperor Palpatine"
  case 4...6:
    villain = "Darth Vader"
  case 7...9:
    villain = "Kylo Ren"
  default:
    villain = ""
}

print(villain)

// switch with compound case
var planet = "Jupiter"

switch planet {
  case "Earth","Mercury","Venus","Mars":
    print("Terrestrial planet")
  case "Saturn","Jupiter","Uranus","Neptune":
    print("Jovian planet")
  default:
    print("Unknown planet")

}

// switch with where clause
var wholeNumber = Int.random(in: 0...10)

switch wholeNumber {
  case let x where x % 2 == 0:
    print("Composite")
  case let x where x % 3 == 0:
    print("Composite")
  default:
    print("Prime")
}

// logical operator
var midnight = false
var date = "January 1, 2020"

if midnight && date == "January 1, 2020" {
  print("It's the start of a new decade!")
} else {
  print("")
}

var carInMotion: Bool = false
var insideACar: Bool = true

if carInMotion || insideACar {
  print("Safety first! Buckle up.")
}

var feelingWell = true

if !feelingWell {
  print("Have some vitamins and take care of yourself 🤒")
} else {
    print("Embrace the day!")
}

var correctPassword = false
var lessThanThreeTries = true
var accessThroughTouchID = true
var unlock: Bool

if !correctPassword && lessThanThreeTries || accessThroughTouchID {
  unlock = true
} else {
  unlock = false
}

print(unlock)

let bool1 = (true || false) || false || false

let bool2 = !true || (false && false || true)

let bool3 = !(false && true) && (false || false)


print(bool1)
print(bool2)
print(bool3)

// challenge

let playerName: String = "Dimas"

let playerQuestion: String = "No"

let randomNumber: Int = Int.random(in: 1...9)

print(randomNumber)

let eightBall: String

switch randomNumber {
  case 1 :
    eightBall = "Yes - definitely"
  case 2 :
    eightBall = "It is decidely so"
  case 3 :
    eightBall = "Without a doubt"
  case 4 :
    eightBall = "Reply hazy, try again"
  case 5 :
    eightBall = "Ask again later"
  case 6 :
    eightBall = "Better not tell you now"
  case 7 :
    eightBall = "My sources say np"
  case 8 :
    eightBall = "Outlook not so good"
  case 9 :
    eightBall = "Very doubtful"
  default:
    eightBall = "Error"
}

// if playerName == "" {
//   print(" asks: \(playerQuestion)")
// } else {
//   print("\(playerName) asks: \(playerQuestion)")
// }

playerName == "" ? print(" asks: \(playerQuestion)") : print("\(playerName) asks: \(playerQuestion)")


print("Magic 8 Ball's answer: \(eightBall)")

//: [Next](@next)
