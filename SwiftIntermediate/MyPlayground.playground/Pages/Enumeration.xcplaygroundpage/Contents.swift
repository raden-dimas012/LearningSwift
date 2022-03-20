//: [Previous](@previous)

import Foundation

// declare a enum

enum Vehicle {
    case airplane
    case boat
    case truck
}

var myRide = Vehicle.truck
 
switch myRide {
  case .airplane:
    print("Let's fly to Peru")
  case .boat:
    print("Let's sail to Hawaii")
  case .truck:
    print("Let's drive to the store")
}

// iterating
enum Vehicle2: CaseIterable {
    case truck
    case boat
    case airplane
}

for vehicle in Vehicle2.allCases {
  print(vehicle)
}

// raw value
enum Vehicle3: Character {
    case truck = "T"
    case boat = "B"
    case airplane = "A"
}
 
print(Vehicle3.airplane.rawValue)

let myBoat = Vehicle3(rawValue: "B")

// associated value
enum Vehicle4 {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
}
 
let myRide = Vehicle4.truck(isFourWheelDrive: true)
switch myRide {
case let .truck(isFourWheelDrive):
    if isFourWheelDrive {
      print("Let's go to the mountains")
    } else {
      print("Let's go to the store")
    }
    print("Let's go to the store.")
case .boat:
    print("Let's sail to Hawaii")
case .airplane:
    print("Let's fly to Peru")
}

// methods
enum Vehicle5 {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
    
    // 1: Create mutating instance method here
    mutating func goOffRoad() {
        self = .truck(isFourWheelDrive: true)
    }
}

var myRide2 = Vehicle5.airplane

// 2: Call method here
myRide2.goOffRoad()

// 3: Print the contents of myRide
print(myRide2)

// computed property
enum Vehicle6 {
    case airplane
    case boat
    case truck(isFourWheelDrive: Bool)
    
    // 1: Create computed value here
    var description: String {
        switch self {
        case .airplane:
            return "This is an airplane"
        case .boat:
            return "This is a boat"
        case let .truck(isFourWheelDrive):
            return "This is a truck" + (isFourWheelDrive ? " with four wheel drive" : "")
        }
    }

}
 
// 2: Intantiate myRide constant here
 
let myRide3 = Vehicle6.truck(isFourWheelDrive: true)

// 3: Print the description of myRide here

print(myRide3.description)

// challenges #1 numero uno
enum Edition: String {
    case basic
    case premium
    case ultimate
    
    mutating func upgrade() {
        switch self {
            case .basic:
                self = .premium
            case .premium:
                self = .ultimate
            case .ultimate:
                print("Can't upgrade further")
        }
    }
}

enum DeliveryMethod {
    case shipping(weight: Int)
    case cloudDigital(isLifetime: Bool)
    
    var shippingCost : Int {
        switch self {
            case .shipping(let weight):
                return weight * 2
            case .cloudDigital:
            return Int(0.0)
            }
    }
}

enum ProductType: String, CaseIterable {
    case kadencePlanner = "Kadence Planner"
    case aceRepository = "Ace Repository"
    case dealForcer = "Deal Forcer"
    case mailCannon = "Mail Cannon"
}

func displayProductOfferings() {
    print("There are \(ProductType.allCases.count) products:")
    for product in ProductType.allCases {
        print(product.rawValue)
    }
    
}

func sendOrderConfirmation(of productType: ProductType, and edition: Edition, using deliveryMethod: DeliveryMethod) {
    
    print("Thank you for purchasing the \(edition.rawValue) edition of \(productType.rawValue)")
    
    switch deliveryMethod {
        case .shipping:
            print("Your order will be shipped to you at a cost of $\(deliveryMethod.shippingCost)")
    case .cloudDigital(let isLifetime):
        if isLifetime {
           print("You have lifetime cloud access")
        } else {
            print("You can access your subscription information in the cloud")
        }
        
    }
    
}

displayProductOfferings()

var myEdition = Edition.basic
myEdition.upgrade()

sendOrderConfirmation(of: ProductType.aceRepository, and: myEdition, using: DeliveryMethod.shipping(weight: 1))



//: [Next](@next)
