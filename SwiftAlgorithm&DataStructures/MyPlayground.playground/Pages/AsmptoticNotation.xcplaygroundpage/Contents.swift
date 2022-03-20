//: [Previous](@previous)

import Foundation

//O(1) -> constant -> This is the best-case scenario. The algorithm takes a constant amount of time.
// let value = array[5]

//O(log n) -> logarithmic -> Great performance. Algorithms having O(logn) time complexity halve the amount of data with each iteration.
func logN(of n: Int) {
   var j = 1
   while j < n {
     j *= 2
   }
 }

//O(n) -> linear ->  Good performance. Assuming there is a queue of 10 people waiting at the billing counter, tending to one customer takes 1 second, so completing the task will take 10 seconds.
let array = [10, 20, 30, 40]
let n = 2
 
for i in 1...n {
  print(array[i])
}

//O(n log n)   ->  “linearithmic”  -> Decent performance. This is a combination of O(n) and O(logn).
for i in 1...n {
 var j = 1
   while j < n {
     j *= 2
   }
 }

//O(n^2) ->   quadratic  ->  Not ideal. Slower than above runtime.
var totalSumOfProductOfPairs = 0
 for i in 1...n {
   for j in 1...n {
     totalSumOfProductOfPairs += i*j
   }
 }

//O(n^3)  ->  cubic  ->  Poor performance.
for i in 1...n {
  for j in 1...n {
    for k in 1...n {
      // some action here
    }
  }
}

//O(2^n)  ->  exponential  ->  Very poor performance.


//O(n!) ->   factorial  ->  Slowest of all



//: [Next](@next)
