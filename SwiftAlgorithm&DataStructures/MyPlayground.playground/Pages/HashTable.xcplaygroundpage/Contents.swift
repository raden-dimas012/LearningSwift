//: [Previous](@previous)

import Foundation

struct HashTable {
  private var buckets: [[(String, String)]]
  
  public init(capacity: Int) {
    buckets = Array(repeating: [], count: capacity)
  }
  
  private func index(for key: String) -> Int {
    return abs(key.hashValue) % buckets.count
  }
  
  public subscript(key: String) -> String? {
    set {
      if let value = newValue {
        update(value: value, for: key)
      } else {
        removeValue(for: key)
      }
    }
    get {
      return value(for: key)
    }
  }
  
  private func value(for key: String) -> String {
    let bucketIndex = index(for: key)
    if let (_, currentValue) = buckets[bucketIndex].enumerated().first(where: { $0.element.0 == key }) {
      return currentValue.1
    }
    return ""
  }
  
  private mutating func update(value: String, for key: String) {
    let bucketIndex = index(for: key)
    if let (elementIndex, _) = buckets[bucketIndex].enumerated().first(where: { $0.element.0 == key }) {
      buckets[bucketIndex][elementIndex] = (key, value)
    } else {
      buckets[bucketIndex].append((key, value))
    }
  }
  
  private mutating func removeValue(for key: String) {
    let bucketIndex = index(for: key)
    if let (elementIndex, _) = buckets[bucketIndex].enumerated().first(where: { $0.element.0 == key }) {
      buckets[bucketIndex].remove(at: elementIndex)
    }
  }
}

var animalSoundsHashTable = HashTable(capacity: 15)
animalSoundsHashTable["Dog"] = "Bark"
animalSoundsHashTable["Cat"] = "Meow"
animalSoundsHashTable["Lion"] = "Roar"

print(animalSoundsHashTable["Dog"]!)
print(animalSoundsHashTable["Cat"]!)
print(animalSoundsHashTable["Lion"]!)

//: [Next](@next)
