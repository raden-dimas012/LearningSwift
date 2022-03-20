//: [Previous](@previous)

import Foundation

// declare empty array
var subwayAdult = [Int]()
var subwayChild = [Int]()

print(subwayAdult)
print(subwayChild)

// array literal
var subwayAdult: [Int] = [800,1200,1500]
var subwayChild: [Int] = [400,600,750]

print(subwayAdult)
print(subwayChild)

// index of array
var temperature: [Int] = [66, 68, 72, 76, 80, 82, 85, 85, 84, 82, 81, 78, 74, 73, 72, 71, 70, 69, 68, 65, 63, 62, 61, 63]

print(temperature[0])

// count property
var countingRhyme = ["eeny", "meeny", "miny", "moe", "catch", "a", "coder", "by", "the", "toe", "if", "they", "debug", "let", "them", "go", "eeny", "meeny", "miny", "moe"]

print(countingRhyme.count)

// append method
var resolutions = ["play more music 🎸",
                   "read more books 📚",
                   "drink more water 💧"]

resolutions.append("learn more about iOS development")

resolutions += ["learn more about clean architecture"]

print(resolutions)

// insert && remove methods
var dna = ["ATG", "ACG", "GAA", "TAT"]

dna.insert("GTG", at: 3)

dna.remove(at: 0)

print(dna)

// iterating over an array
var receipt = [12.00, 3.75, 6.50, 19.99]

var total: Double = 0.0

for item in receipt {
  total += item
}

total = total * 1.08875

print(total)

// odd even
var list = [2, 4, 3, 6, 1, 9]

var sumEven: Int = 0
var sumOdd: Int = 0
for itemList in list {
  if itemList % 2 == 0 {
    sumEven += itemList
  } else {
    sumOdd += itemList
  }
}

print("Sum of even numbers is \(sumEven)")

print("Sum of odd numbers is \(sumOdd)")

// challenge #1 mixtape 101
print(".------------------------.")
print("| mixtape name    90 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

print("Nandemonaiya")

var mixtape: [String] = []

mixtape.append("Nandemonaiya1")
mixtape.append("Nandemonaiya2")
mixtape.append("Nandemonaiya3")
mixtape.append("Nandemonaiya4")
mixtape.append("Nandemonaiya5")
mixtape.append("Nandemonaiya6")
mixtape.append("Nandemonaiya7")
mixtape.append("Nandemonaiya8")
mixtape.append("Nandemonaiya9")
mixtape.append("Nandemonaiya10")

print(mixtape.count)

mixtape.remove(at: 7)
mixtape.remove(at: 4)

mixtape.insert("Nandemonaiya remix", at: 3)

for tracklist in mixtape {
  print(tracklist)
}

// challenge #2 palindrome
var text: [String] = ["a","n","n","a"]

var reversed: [String] = []
var counter: Int = text.count - 1
while counter >= 0 {
    reversed.append(text[counter])
    counter -= 1
}

if reversed == text {
  print("We have a palindrome")
} else {
  print("We don't have a palindrome'")
}

// challenge #3 caesar cipher
var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var secretMessage = "Codecademy".lowercased()

var message = Array(secretMessage)

for i in 0 ..< message.count {
  
  for j in 0 ..< alphabet.count {
    
    if message[i] == alphabet[j] {
        
      message[i] = alphabet[(j+3) % 26]
      break
      
    }
    
  }
  
}

print(message)

// Sets

// declare a empty set
var instruments = Set<String>()

// insert
var friends: Set = ["Harry", "Ron"]
print("There are some things you can't share without ending up liking each other, and defeating a twelve-foot mountain troll is one of them.")
friends.insert("Hermione")
friends.insert("Ron")

print("Friends: \(friends)")

// remove
var planets: Set = ["Earth", "Jupiter", "Mars", "Neptune", "Saturn", "Venus", "Uranus", "Mercury", "Pluto"]

planets.remove("Pluto")

planets.removeAll()

print(planets)

// contains
var coffeeFlavors: Set = ["Caramel", "Mocha", "Pumpkin Spice", "Vanilla", "Blueberry"]

if coffeeFlavors.contains("Blueberry") {
  print("One blueberry coffee coming right up.")
} else {
  print("We do not serve that coffee flavor here.")
}

// looping with a set
var thingsToPack: Set = ["Bathing Suit", "Clothes", "Sunglasses", "Sunscreen", "Favorite Book", "Phone Charger"]

var suitcase = Set<String>()

for item in thingsToPack {
  suitcase.insert(item)
}
print(suitcase)

// intersection,union,symmetricDifference,subtract
var swim: Set = ["Turtles", "Ducks", "Puffins", "Shark"]

var fly: Set = ["Humming birds", "Bats", "Ducks", "Puffins"]

var swimAndFly: Set = swim.intersection(fly)

print(swimAndFly)

var consonants: Set = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]

var vowels: Set = ["A", "E", "I", "O", "U"]

var alphabet: Set = consonants.union(vowels)

print(alphabet)

var oscarWinners: Set = ["Heath Ledger", "Rita Moreno", "Audrey Hepburn", "John Legend"]
var emmyWinners: Set = ["Peter Dinklage", "John Legend", "Audrey Hepburn", "Rita Moreno"]

var difference: Set = oscarWinners.symmetricDifference(emmyWinners)

print(difference)

var foodEmojis: Set = ["🥕", "🍇", "🌶️", "🍒", "🍎", "🥦"]
var fruitEmojis: Set = ["🍇", "🍎", "🍒"]

var veggieEmojis: Set = foodEmojis.subtracting(fruitEmojis)

print(veggieEmojis)

// challenge #1 school roster
var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

var allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)

for student in allStudents {
  print(student)
  print(allStudents.count)
}

var noLanguage: Set = allStudents.subtracting(spanish101).subtracting(german101)

print(allStudents)




//: [Next](@next)
