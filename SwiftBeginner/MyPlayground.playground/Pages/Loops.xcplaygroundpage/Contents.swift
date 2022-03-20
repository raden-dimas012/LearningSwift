//: [Previous](@previous)

import Foundation

// repeat tasks
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")
print("This can be so much easier with loops!")

// for in loop
for age in 1...21 {
  print("Are you \(age)")
}

// stride function
for num in stride(from:3,to: 0,by:-1) {
  print(num)
}

// iterating through strings
var funFact = "exlxephxxxaxnts xcaxxn'xxt xxxjxumxpx."

for char in funFact {
  if char != "x" {
    print(char)
  }
}

// using underscore placeholder
for _ in 1...15 {
  print("Buy eggs from the market")
}

// continue keyword
for num in 1...9 {
  // Add your code below 🔢
  if num % 2 == 1 {
    continue
  }
  print(num)
}

print("Who do we appreciate?")
print("YOU!")

// break keyword
var guessedNum = Int.random(in: 1...15)

for counter in 1...15 {
  if counter == guessedNum {
    print("It's \(guessedNum)!!")
    break
  }
  print("Is it \(counter)?")
}

// while loop
var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)

while guess != magicNum {
  print("You guessed \(guess), and the number was \(magicNum)")
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
  
}

print("You're right it was \(guess)!")


// challenge #1 even or odd
for oddEven in 1...100 {
    if oddEven % 2 == 0 {
        print("even")
    } else if oddEven % 2 == 1 {
        print("odd")
    } else {
        print("other")
    }
}

// challenge #2 prime number
for prime in 1...100 {
    if prime <= 1 {
        continue
    } else if prime == 2 {
        print(prime)
    } else if prime % 2 == 0 {
        continue
    } else if prime == 3 {
        print(prime)
    } else if prime % 3 == 0 {
        continue
    }else {
        print(prime)
    }
}

// challenge #3 count how many character in a string
 let string: String = "Raden Dimas"
 var countChar: Int = 0
 for _ in string {
     countChar += 1
 }
 print(countChar)


// challenge #4 triangle with *
for i in stride(from: 0, to: 5, by: 1){
    for _ in stride(from: 0, to: i, by: 1){
        print("*" , terminator : "")
    }
    print(" ")
}



//: [Next](@next)
