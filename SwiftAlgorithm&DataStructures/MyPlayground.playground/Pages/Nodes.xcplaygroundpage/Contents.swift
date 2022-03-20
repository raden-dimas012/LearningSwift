//: [Previous](@previous)

import Foundation

class Node {
  var data: String
  var next: Node?

  init(data: String) {
    self.data = data
  }
}

var strawberry = Node(data: "Berry Tasty")
var banana = Node(data: "Banana-rama")
var coconut = Node(data: "Nuts for Coconut")

strawberry.next = banana
banana.next = coconut

func printAllNodesRecursively(startingAt node: Node?) {
  guard let node = node else { return }
  print(node.data)
  printAllNodesRecursively(startingAt: node.next)
}

printAllNodesRecursively(startingAt: strawberry)

//: [Next](@next)
