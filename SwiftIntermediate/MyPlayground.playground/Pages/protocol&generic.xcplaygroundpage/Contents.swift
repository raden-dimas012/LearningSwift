//: [Previous](@previous)

import Foundation

// declare protocol
protocol Incrementable {
  var currentValue: Double {get}

  mutating func increment()
}

struct VisitorCounter: Incrementable {
  var currentValue = 0.0
  
  mutating func increment() {
    currentValue += 1
  }
}

struct Wage: Incrementable {
  var currentValue = 15.0
  mutating func increment() {
    currentValue += currentValue * 0.10
  }
}

var parkGuests = VisitorCounter()
parkGuests.increment()
print(parkGuests.currentValue)

var salary = Wage()
salary.increment()
print(salary.currentValue)

// protocol swift standard library
struct Store: Hashable {
    let name: String
    let products: [String]
}
 
let jaysPizza = Store(name: "Jay's Pizza",
                      products: ["Pizza", "Soda", "Salad"])
 
let salesByStore: [Store: Double] = [jaysPizza: 100]

print(salesByStore)

// protocol inheritance
protocol Car: CustomStringConvertible {
    var model: String { get }
    var topSpeed: Double { get }
    var description: String { get }
}

protocol ElectricCar: Car {
    var range: Double { get }
}

protocol GasCar: Car {
    var milesPerGallon: Double { get }
}

struct Oldsmobile: GasCar {
    let model: String
    let topSpeed: Double
    let milesPerGallon: Double
    var description: String {
        "This is an Oldsmobile \(model) with a top speed of \(topSpeed) that gets \(milesPerGallon) miles per gallon"
    }
    
}

struct Tesla: ElectricCar {
    let model: String
    let range: Double
    let topSpeed: Double
    var description: String {
        "This is a Telsa \(model) with a top speed of \(topSpeed) and a range of \(range)"
    }
}

let modelX = Tesla(model: "Model X", range: 350, topSpeed: 155)
let achieva = Oldsmobile(model: "Achieva", topSpeed: 139, milesPerGallon: 32)
    
let cars: [Car] = [modelX, achieva]
for car in cars {
    print(car.description)
}

// protocol extension
protocol IceCreamSelling {
    var flavors: [String] { get }
}

extension IceCreamSelling {
    var flavors: [String] {
        ["Vanilla", "Chocolate"]
    }
}

struct IceCreamTruck: IceCreamSelling {
    let name: String
}

struct IceCreamParlor: IceCreamSelling {
    let name: String
    var flavors: [String] {
        ["Mint Chip", "Strawberry", "Cookie Dough"]
    }
}

let misterSoftee = IceCreamTruck(name: "Mister Softee")
let popTates = IceCreamParlor(name: "Pop Tate's")

print(misterSoftee.flavors)
print(popTates.flavors)

// generic function
func tripleValues<T: Numeric>(in nums: [T]) -> [T] {
    return nums.map { $0 * 3 }
}

let intArr = [1,2,3]
let doubleArr = [1.0, 2.5, 3.9]


print(tripleValues(in: intArr))
print(tripleValues(in: doubleArr))

// generic type
struct GameResult<Score: Comparable> {
    let playerOne: String
    let playerTwo: String
    let playerOneScore: Score
    let playerTwoScore: Score
    func printWinner() {
        if playerOneScore > playerTwoScore {
            print("\(playerOne) Wins!")
        } else if playerOneScore < playerTwoScore {
            print("\(playerTwo) Wins!")
        } else {
            print("It's a tie!")
        }
    }
}

let ufcResult: GameResult<Int> = GameResult(playerOne: "Forrest Griffin",
                                       playerTwo: "Stephan Bonnar",
                                       playerOneScore: 29,
                                       playerTwoScore: 28)
ufcResult.printWinner()

let chessResult: GameResult<Double> = GameResult(playerOne: "Boris Spassky",
                             playerTwo: "Bobby Fischer",
                             playerOneScore: 8.5,
                             playerTwoScore: 12.5)
chessResult.printWinner()

// associated type
protocol SummableCollection {
    associatedtype T: AdditiveArithmetic
    var elements: [T] { get }
    var total: T { get }
}

extension SummableCollection {
    var total: T {
        elements.reduce(T.zero, +)
    }
}

struct IntCollection: SummableCollection {
    let name: String
    let elements: [Int]
}

struct DoubleCollection: SummableCollection {
    let name: String
    let elements: [Double]
}

let revenue = DoubleCollection(name: "Monthly Revenue in Thousands", elements: [1.5, 3.2, 1.8])
let homeRuns = IntCollection(name: "Home Runs", elements: [1,0,2])

print(revenue.total)
print(homeRuns.total)

// opaque types
protocol ResettableCollection {
    associatedtype T
    var elements: [T] { get }
    mutating func resetAllElements()
}

struct ResettableStringArray: ResettableCollection {
    var elements = [String]()
    mutating func resetAllElements() {
        elements = elements.map { _ in "" }
    }
}

func getResettableCollection() -> some ResettableCollection { // opaque -> some
    let passwords = ["password", "letmein", "openup"]
    return ResettableStringArray(elements: passwords)
}

var collection = getResettableCollection()
// print(collection.elements[0].lowercased) // Error
collection.resetAllElements()
print(collection)

// challeng #1 green thum not completed yet
enum Month {
  case january,february,march,april,may,june,july,august,september,november,december
}

protocol Plantable {
  var plantMonth: Month { get }
  var plantingInstuctions: String { get }
}

protocol Waterable {
  var inchesOfWater: Int { get }
  var wateringFrequency: String { get }
  var wateringInstuctions: String { get }
}

protocol Harvestable {
  var harvestMonth: Month { get }
  var harvestingInsructions: String { get }
}

protocol Gardenable: Plantable,Waterable,Harvestable {
 
}

extension Gardenable {
  func printGardeningTips() {
    print("Follow these Gardening 101 tips for a bountiful harvest. 1) Make sure you always water your plant the exact amount that it needs. \("harvestingInstructions"). 2) Make sure you know what zone that you're planting in to ensure that the plants you're planting are in their optimal environment.")
  }
}

//: [Next](@next)
