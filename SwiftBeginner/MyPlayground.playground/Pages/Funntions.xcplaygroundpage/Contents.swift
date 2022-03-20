//: [Previous](@previous)

import Foundation

// defining a function
func findCircumference(diameter: Double) -> Double {
  return 3.14 * diameter
}
let result = findCircumference(diameter: 10)
print(result)

// argument labels
var friendsList: [String] = []

func addFriend(named friendName: String) {
  friendsList.append(friendName)
}

addFriend(named: "Alice")
addFriend(named: "Bob")
addFriend(named: "Cindy")

print(friendsList)

// omitting argument labels
let adults = 2
let students = 15

func museumEntry(_ numAdults: Int,_ numStudents: Int) -> Int {
  let studentTicket = 14
  let adultTicket = 25
  let total = (studentTicket * numStudents) + (adultTicket * numAdults)
  return total
}

print(museumEntry(adults,students))

// return multiple values
func favoriteCuisine() -> (name: String,dish: String) {

  return ("Fried Rice", "Beef Dish")
}

let cuisine = favoriteCuisine()
print("My favorite \(cuisine.name) dish is \(cuisine.dish)!")


// implicit return
func findRemainder(dividend: Int,divisor: Int) -> Int {
  dividend % divisor
}

print(findRemainder(dividend: 10,divisor: 4))

// default parameters
func bookingTicket(passengerName: String = "RadenDimas",seatClass: String = "Economy",timeOfDeparture: Int) -> String {
  return "\(passengerName), your seat class is \(seatClass), and you will be departing at \(timeOfDeparture)."
}

print(bookingTicket(seatClass: "Business",timeOfDeparture: 9))

// variadic parameters
func avgSongLength(times: Int...) -> Int {
  var total = 0
  for time in times {
    total += time
  }
  return total / times.count
}

print(avgSongLength(times: 183, 176, 180, 176, 184, 179, 181, 180, 172, 178))

// inout parameter
var currentGeneratorState = "Off"
func generators(powerOutage: Bool, state: inout String) {
  if powerOutage {
    state = "On"
  } else {
    state = "Off"
  }
}

generators(powerOutage: true, state: &currentGeneratorState)

print(currentGeneratorState)

// challenge #1 rock scisser paper
func getUserChoice(userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" || userInput == "scissors"  {
    return userInput;
  } else {
    return "You can only enter rock, paper, or scissors. Try again"
  }
}

func getComputerChoice() ->  String {
  let random = Int.random(in: 0...2)
  
  switch random {
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
     return "Invalid number"
  }
}


func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  
  var decision: String = "It's a tie"
  
  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won"
      } else if compChoice == "scissors"{
        decision = "The user won"
      }

    case "paper":
      if compChoice == "rock" {
        decision = "The user won"
      } else if compChoice == "scissors"{
        decision = "The computer won"
      }

    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won"
      } else if compChoice == "paper" {
        decision = "The user won"
      }
    default:
      print("Something went wrong")
  }
  return decision
}


let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))



//: [Next](@next)
