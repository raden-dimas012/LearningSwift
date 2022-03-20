//: [Previous](@previous)

import Foundation

//class Node {
//  var data: String
//  var next: Node?
//
//  init(data: String) {
//    self.data = data
//  }
//}
//extension Node: CustomStringConvertible {
//  var description: String {
//    return data + " -> " + (next?.description ?? "nil")
//  }
//}

//class LinkedList {
//  var head: Node?
//  var tail: Node?
//
//  func append(_ data: String) {
//    let newNode = Node(data: data)
//    if let lastNode = tail {
//      lastNode.next = newNode
//    } else {
//      head = newNode
//    }
//    tail = newNode
//  }
//
//  func getNode(at index: Int) -> Node? {
//    guard index >= 0 else { return nil }
//    var current = head
//
//    for _ in 0..<index {
//      guard let next = current?.next else { return nil }
//      current = next
//    }
//    return current
//  }
//
//  func removeNode(from index: Int) -> Node? {
//    var removedNode: Node?
//    guard index >= 0 else { return nil }
//    if index == 0 {
//      removedNode = head
//      head = head?.next
//      if head == nil {
//        tail = nil
//      }
//      return removedNode
//    }
//    guard let previous = getNode(at: index - 1) else {
//      return nil
//      }
//    removedNode = previous.next
//    if removedNode?.next == nil {
//      tail = previous
//    }
//    previous.next = removedNode?.next
//    return removedNode
//  }
//}
//
//extension LinkedList: CustomStringConvertible {
//  var description: String {
//    return head?.description ?? "nil"
//  }
//}
//
//let germanCars = LinkedList()
//germanCars.append("Volkswagen")
//germanCars.append("Porsche")
//germanCars.append("Audi")
//print(germanCars)
//let removedNode = germanCars.removeNode(from: 0)
//print(germanCars)

// challenge #1 swapping linked list
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

class LinkedList {
  var head: Node?
  var tail: Node?
  
  func append(_ data: String) {
    let newNode = Node(data: data)
    if let lastNode = tail {
      lastNode.next = newNode
    } else {
      head = newNode
    }
    tail = newNode
  }
  
  func getNode(at index: Int) -> Node? {
    guard index >= 0 else { return nil }
    var current = head
    
    for _ in 0..<index {
      guard let next = current?.next else { return nil }
      current = next
    }
    return current
  }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        return head?.description ?? "nil"
    }
}
 
func swapNodes(of list: LinkedList, at index1: Int, and index2: Int) {

  print("Swapping \(index1) and \(index2)")
  var node1Prev: Node?
  var node2Prev: Node?
  var node1: Node?
  var node2: Node?

  if index1 == index2 {
    print("Element indices are the same - no swap to be made")
    return
  }

  node1 = list.getNode(at: index1)
  node2 = list.getNode(at: index2)

  if node1 == nil || node2 == nil {
    print("Swap not possible - one or more elements are not in the list")
    return
  }

  if index1 > 0 {
    node1Prev = list.getNode(at: index1 - 1)
  }
  if index2 > 0 {
    node2Prev = list.getNode(at: index2 - 1)
  }

  node1Prev?.next = node2
  node2Prev?.next = node1
  let tempNode = node1?.next
  node1?.next = node2?.next

  if node1Prev == nil {
    list.head = node2
  }

  if node2?.next == nil {
    list.tail = node1
  }

  node2?.next = tempNode
}

let testList = LinkedList()
for i in 1...10 {
  testList.append(String(i))
}
print(testList)
swapNodes(of: testList, at: 2, and: 4)
print(testList)

//func getNodeFromLast(from list:LinkedList, at n:Int) -> Node? {
//    var linkedListArray = [Node?]()
//    var currentNode = list.head
//    while currentNode != nil {
//      linkedListArray.append(currentNode!)
//      currentNode = currentNode!.next
//    }
//    return linkedListArray[linkedListArray.count - n];
//}

//func getNodeFromLast(from list:LinkedList, at n:Int) -> Node? {
//    var current:Node? = nil
//    var tailSeeker = list.head
//    var count = 0
//    while tailSeeker != nil {
//      if count > n - 1 {
//        if current == nil {
//          current = list.head
//        }
//        current = current!.next
//      }
//      tailSeeker = tailSeeker!.next
//      count += 1
//    }
//    return current
//  }

//func getMiddleNode(from list:LinkedList) -> Node? {
//   var fast = list.head
//   var slow = list.head
//
//   while fast != nil {
//     fast = fast?.next
//     if fast != nil {
//       fast = fast?.next
//       slow = slow?.next
//     }
//   }
//   return slow
// }

//func getMiddleNode(from list:LinkedList) -> Node? {
//  var count = 0
//  var fast = list.head
//  var slow = list.head
//
//  while fast != nil {
//    fast = fast?.next
//    if count % 2 != 0 {
//      slow = slow?.next
//    }
//    count += 1
//  }
//  return slow
//}


//: [Next](@next)
