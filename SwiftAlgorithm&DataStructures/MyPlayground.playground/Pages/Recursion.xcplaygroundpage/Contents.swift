//: [Previous](@previous)

import Foundation


func findFactorialIteratively(of n: Int) -> Int {
    if n == 0 {
        return 1
    }
    var factorial: Int = 1
    for i in 1...n {
        factorial *= i
    }
    return factorial
}


func findFactorialRecursively(of n: Int) -> Int {
    if n > 0 {
      return n * findFactorialRecursively(of: n - 1)
    } else {
      return 1
    }
}


print("The recursive solution to 10! is: " + String(findFactorialIteratively(of: 10)))
print("The recursive solution to 10! is: " + String(findFactorialRecursively(of: 10)))


//: [Next](@next)
