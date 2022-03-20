//: [Previous](@previous)

import Foundation

// defining closure
let helloClosures = {
  print("Hello closures!")
}

helloClosures()

// input output
let add: (Int,Int) -> Int = { intOne,intTwo in
  return intOne + intTwo
}

print(add(2,2))

// passing a closure to a funtion
let cards = [8,2,5,3,4]

func handValue(cards: [Int], scoringRules: (Int) -> Int) -> Int {
    var totalValue = 0
    for card in cards {
        totalValue += scoringRules(card)
    }
    return totalValue
}

let allCards = { (card: Int) -> Int in
    return card
}

print(handValue(cards: cards, scoringRules: allCards))

let onlyEvens = { (card: Int) -> Int in
    if card.isMultiple(of: 2) {
        return card
    } else {
        return 0
    }
}

print(handValue(cards: cards, scoringRules: onlyEvens))

// expressions and trailing closure syntax
func bake(ingredient: String, completionAction: (String) -> Void) {
  print("Baking \(ingredient)")
  completionAction(ingredient)
}

bake(ingredient: "Cola") { ingredient in
  print("Finished baking \(ingredient)")
}

// syntactic sugar
let strings = ["remit", "spans", "level"]

func transform(strings: [String], transformer: (String) -> String) -> [String] {
  var transformedStrings = [String]()
  for string in strings {
    transformedStrings.append(transformer(string))
  }
  return transformedStrings
}

print(transform ( strings: strings ) { (str: String) -> String in
  return String(str.reversed())
})

print(transform ( strings: strings ) { str in
  String(str.reversed())
})

print(transform(strings: strings) { String($0.reversed()) })

// high order function
var names = ["Jason", "Kimberly", "Zach", "Austin", "Sarah", "Adam", "Kathy"]

let aNames = names.filter { $0.starts(with: ["A"]) }
print(aNames)

let sortedNames = names.sorted(by: <)
print(sortedNames)

// escaping closure
struct NumberPrinter {
    var startAction: () -> Void
    var completeAction: () -> Void
    
    mutating func setStartAction(to action: @escaping () -> Void) {
        self.startAction = action
    }
    
    mutating func setCompleteAction(to action: @escaping () -> Void) {
        self.completeAction = action
    }
    
    func printNumber(using numberGenerator: () -> Int) {
        startAction()
        print(numberGenerator())
        completeAction()
    }
}

let printer = NumberPrinter(startAction: { print("Starting!") }, completeAction: { print("Finished!") })

printer.printNumber(using: { Int.random(in: 1..<100) })
printer.printNumber(using: { Int.random(in: 1..<5) })

// capturing values
func createMultiplier(factor: Int) -> () -> Int {
  var value = 1
  let multiplier: () -> Int = {
    value *= factor
    return value
  }
  return multiplier
}

let multiplier = createMultiplier(factor: 3)
print(multiplier())
print(multiplier())
print(multiplier())

// challeng #1 calculator
struct Calculator {
    func reduce(_ nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
        var total = initialResult
        for num in nums {
            total = nextPartialResult(total, num)
        }
        return total
    }
    func filter(_ nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
        var filteredNums = [Int]()
        for num in nums {
            if isIncluded(num) {
                filteredNums.append(num)
            }
        }
        return filteredNums
    }
    func map(_ nums: [Int], using transform: (Int) -> Int) -> [Int] {
        var mappedNums = [Int]()
        for num in nums {
            mappedNums.append(transform(num))
        }
        return mappedNums
    }
    func sort(_ nums: [Int], by areInIncreasingOrder: (Int, Int) -> Bool) -> [Int] {
        var nums = nums
        for indexOne in 1..<nums.count {
            var indexTwo = indexOne
            while indexTwo > 0 && areInIncreasingOrder(nums[indexTwo], nums[indexTwo - 1]) {
                nums.swapAt(indexTwo - 1, indexTwo)
                indexTwo -= 1
            }
        }
        return nums
    }
}



let calculator = Calculator()

let tips = [6,4,8,3,5,2]
let addition: (Int, Int) -> Int = { $0 + $1 }
let sum = calculator.reduce(tips, using: addition, startingAt: 0)
print(sum)

let rainfallInInches = [5,2,8,0,0,4]
let rainyDays = calculator.filter(rainfallInInches, using: { rainFall in rainFall != 0 })
print(rainyDays)

let roomPrices = [50,100,150,200,250,500]
let roomPricesWithSurchase = calculator.map(roomPrices) { $0 + 20 }
print(roomPricesWithSurchase)

let calories = [400, 800, 500, 1_000]
let sortedCalories = calculator.sort(calories, by: <)
print(sortedCalories)



//: [Next](@next)
