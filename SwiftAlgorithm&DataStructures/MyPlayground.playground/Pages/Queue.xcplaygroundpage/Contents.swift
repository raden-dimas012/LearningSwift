//: [Previous](@previous)

import Foundation

class Node {
  var data: String
  var next: Node?

  init(data: String) {
    self.data = data
  }
}

extension Node: CustomStringConvertible {
  var description: String {
    return data + " -> " + (next?.description ?? "nil")
  }
}

struct Queue {
  var head: Node?
  var tail: Node?

  func peek() -> String? {
    return head?.data
  }

  mutating func enqueue(_ data: String) {
    let newNode = Node(data: data)
    
    guard let lastNode = tail else {
        head = newNode
        tail = newNode
        return
    }
    
    lastNode.next = newNode
    tail = newNode
  }

  mutating func dequeue() -> String? {
    var removedNode: String?

    if let firstNode = head {
      removedNode = firstNode.data
    }

    head = head?.next
    return removedNode
  }
}

extension Queue: CustomStringConvertible {
  var description: String {
    guard let firstNode = head else { return "Nothing in the queue" }
    return "(Front) \(firstNode) (Back)"
  }
}

var myQueue = Queue()
print(myQueue)

//: [Next](@next)
