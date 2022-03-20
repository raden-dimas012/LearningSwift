//: [Previous](@previous)

import Foundation

// empty dictionary
var emptyLiteral: [String: Int] = [:]

var emptyInitializer = [String: Bool]()

// adding elements
var teaSteepingTemperature = [
  "Black": 212,
  "Oolong": 185,
  "White": 185
]

teaSteepingTemperature["Green"] = 185
teaSteepingTemperature["Rooibos"] = 212

print(teaSteepingTemperature)

// updating elements
var abbreviations = [
  "LOL": "Laboring Over Latkes",
  "LMK": "Let Me Know",
  "BRB": "Bringing Radishes Back",
  "GJOYC": "Great Job On Your Code"
]

abbreviations.updateValue("Be Right Back", forKey: "BRB")

abbreviations["LOL"] = "Laugh Out Loud"


print(abbreviations)

// removing elements
var rainbowHex = [
  "red": "#ff0000",
  "pink": "#ffc0cb",
  "yellow": "#ffff00",
  "maroon": "#800000",
  "green":  "#00ff00",
  "blue": "#0000ff",
  "violet": "#ee82ee"
]

rainbowHex["maroon"] = nil

rainbowHex.removeValue(forKey: "pink")

rainbowHex.removeAll()

print(rainbowHex)

// isEmpty

var numberOfSides = [
  "triangle": 3,
  "square": 4,
  "rectangle": 4,
  "decagon": 10,
  "triacontagon": 30
]

if numberOfSides.isEmpty {
  print("This dictionary has no elements in it.")
} else {
  print(numberOfSides.count)
}

// accessing value
var flowerNames = [
  "Lily": "Lilium",
  "Sunflower": "Helianthus",
  "Orchid": "Orchidaceae",
  "Daffodil": "Narcissus"
]

var sunflowerScientific = flowerNames["Sunflower"]!
print(sunflowerScientific)

if let lilyScientific = flowerNames["Lily"] {
  print("A lily is referred to as a \(lilyScientific) in the science community.")
}

// iterating through a dictionary
var mythology = [
  "Zeus": "Jupiter",
  "Athena": "Minerva",
  "Poseidon": "Neptune",
  "Demeter": "Ceres"]

for (greekName,romanName) in mythology {
  print("\(greekName) is also known as \(romanName)")
}

// keys and value
var lemonadeStand = [
  "April": 8.50,
  "May": 12.75,
  "June": 22.50,
  "July": 38.25,
  "August": 32.50,
  "September": 11.50
]

var total: Double = 0.0

for monthlyProfit in lemonadeStand.values {
  total += monthlyProfit
}

print("Total profits are \(total)")

// tuples
var easyAsPie = (saying: "easy as", amount: 3.14)
var firstElementValue = easyAsPie.saying  // "easy as"
var secondElementValue = easyAsPie.amount

var lionKing1994 = [
  "Simba": "Matthew Broderick",
  "Mufasa": "James Earl Jones",
  "Rafiki": "Robert Guillaume"
]

for (character, actor) in lionKing1994 {
  print("\(character) was voiced by \(actor).")
}

// if let statements
var animalNames = [
  "Zebra": "Equus quagga",
  "Giraffe": "Giraffa camelopardalis",
  "Elephant": "Proboscidea elephantide"
]
 
if let giraffeSci = animalNames["Giraffe"] {
  print("A giraffe is also known as a \(giraffeSci).")
} else {
  print("There is no value.")
}
 
print("\(giraffeSci) are herbivores.")

// challenge #1 morse decoder
var englishText = "this is a secret message"
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."
var lettersToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "!": "-.-.--",
  "?": "..--..",
  ",": "--..--"
]
var morseText = ""

for element in englishText {
  // Check if the value exists in the dictionary
  if let morseChar = lettersToMorse["\(element)"]{
    // Append the letter to morseText
    // Append a space to morseText because each letter is separated by a single space in morse code.
    morseText += morseChar + " "
  }
  else{
    // Append 3 spaces to morseText because each word in a morse code message is separated by three spaces
    morseText+="  "
  }
}
print (morseText)

var decodedMessage = ""
var currMorse = ""
var morseCodeArray = [String]()

// Loop through each character in secretMorse
for char in secretMessage {
  // Check if char is not a space
  if char != " " {
    // Append the value of char to currMorse
    currMorse.append(char)
  }
  
  // If the value of char is a space character, the code in the else statement will be executed
  else {
    // Use a switch statement to assemble characters into individual morse code letters
    switch currMorse {
      case "":
        currMorse += " "
      case " ":
        // Append a space to morseCodeArray
        morseCodeArray.append(" ")
        currMorse = ""
      default:
        // Append the morse code letter to the array
        morseCodeArray.append(currMorse)
        // Reset the value of currMorse
        currMorse = ""
    }
    
  }
}
// Append the final value of currMorse to morseCodeArray
morseCodeArray.append(currMorse)

var morseToLetter: [String: String] = [:]

// Iterate through letterToMorse dictionary, add the keys as values and the values as keys to the morseToLetter dictionary
for (letter,morseChar) in lettersToMorse{
  morseToLetter[morseChar]=letter
}

// Go through each element in morseCodeArray and find the text value via the morseToLetter dictionary
for morseValue in morseCodeArray {
  // Check if the value exists in the morseToLetter dictionary
  if let letterChar = morseToLetter[morseValue]{
    //Append the values to decodedMessage
    decodedMessage += letterChar
  }
  //if it's not in the dictionary, it's probably a space
  else {
    // Add a space to decodedMessage
    decodedMessage += " "
  }
}
print (decodedMessage)


//: [Next](@next)
