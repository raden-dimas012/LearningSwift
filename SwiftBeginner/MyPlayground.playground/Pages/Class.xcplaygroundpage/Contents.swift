//: [Previous](@previous)

import Foundation


// defining a class
class Restaurant {
  var name = ""
  var type = [""]
  var rating = 0.0
  var delivery = false
}

// Write your code below 🍝
var bobsBurgers = Restaurant()
bobsBurgers.name = "Bob's Burgers"
bobsBurgers.type = ["Burgers","Fast Food"]
bobsBurgers.rating = 3.5
bobsBurgers.delivery = true

print(bobsBurgers.name)
print(bobsBurgers.type)
print(bobsBurgers.rating)
print(bobsBurgers.delivery)

// init
class Restaurant {
  var name = ""
  var type = [""]
  var rating = 0.0
  var delivery = false

  init(name: String,type: [String], rating: Double, delivery: Bool) {
    self.name = name
    self.type = type
    self.rating = rating
    self.delivery = delivery
  }
  
}

var laRatatouille = Restaurant(name: "La Ratatouille",type: ["French"], rating: 4.7, delivery: false)

print(laRatatouille.name)
print(laRatatouille.type)
print(laRatatouille.rating)
print(laRatatouille.delivery)

// inherit
class Order {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0

  func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Total:     $\(total)")
  }
}

// override
class Order {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0

  func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Total:     $\(total)")
  }
}

class DeliveryOrder: Order {
  var deliveryFee = 2.0
  
  override func printReceipt() {
    print("Items:     \(items)")
    print("Subtotal:  $\(subtotal)")
    print("Tip:       $\(tip)")
    print("Delivery:  $\(deliveryFee)")
    print("Total:     $\(total)")
  }
  
  
}

var order2 = DeliveryOrder()

order2.items = ["Ramen", "Diet Coke"]
order2.subtotal = 14.69
order2.tip = 2.00
order2.deliveryFee = 3.00
order2.total = 19.69

order2.printReceipt()

class DeliveryOrder: Order {
  var deliveryFee = 2.0
}

// reference types
class Order {
  var items = [""]
  var subtotal = 0.0
  var tip = 0.0
  var total = 0.0
  
  init(items: [String], subtotal: Double, tip: Double, total: Double) {
    self.items = items
    self.subtotal = subtotal
    self.tip = tip
    self.total = total
  }
}

var order1 = Order(items: ["Chili Fries", "Lemonade"], subtotal: 8.75, tip: 2.0, total: 12.75)

var order8 = order1
order8.total = 0.0

print(order1.total)
print(order8.total)

// challenge #1 pokedex
class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability: [""]

  init(num: Int, name: String, type: [String], ability: [String]) {
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

  func displayInfo() {
    print("No.        #\(num)")
    print("Name       \(name)")
    print("Type       \(type)")
    print("Abilities  \(ability)")
    print("===================================")
  }
}

class GigantamaxPokemon: Pokemon {
  
  var location = ""

  init(num: Int, name: String, type: [String], ability: [String], location: String) {
    self.location = location
    super.init(num: num, name: name, type: type, ability: ability)
  
  }
  
  override func displayInfo() {
    print("No.        #\(num)")
    print("Name       \(name)")
    print("Type       \(type)")
    print("Abilities  \(ability)")
    print("Location   \(location)")
    print("===================================")
  }
}

var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])

var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])

var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])

var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")

bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
charizard.displayInfo()

//: [Next](@next)
