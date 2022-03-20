//: [Previous](@previous)

import Foundation

// unwrapping

var flightDistance: Int = 1000
var connectingFlightDistance: Int? = 2000

if connectingFlightDistance != nil {
 let totalFlightDistance = flightDistance + connectingFlightDistance!
 print(totalFlightDistance)
}

// optional binding
var firstName: String = "Raden"

var lastName: String = "Dimas"

var suffix: String? = "Sr."
suffix = nil
if let suffix = suffix {
  print("\(firstName) \(lastName) \(suffix)")
} else {
  print("Hello, \(firstName) \(lastName)")
}

// multiple optional binding
var language = "Swift"
var firstRelease: Int? = 2014
var website: String? = "swift.org"
var designer: String? = "Chris Lattner"
var shouldDisplayMessage = true

if let firstRelease = firstRelease,
   let website = website,
   let designer = designer,
      shouldDisplayMessage {
                let message =
                    """
                    \(language) was first released in \(firstRelease).
                    Its website can be found at \(website).
                    It was designed by \(designer).
                    """
                print(message)
}

// guard
func runProgram() {
    let language = "Swift"
    let firstRelease: Int? = 2014
    let website: String? = "swift.org"
    let designer: String? = "Chris Lattner"
    let shouldDisplayMessage = true

    guard let unwrappedRelease = firstRelease,
          let unwrappedWebsite = website,
          let unwrappedDesigner = designer,
          shouldDisplayMessage else {
              return
          }
    let message =
                      """
                      \(language) was first released in \(unwrappedRelease).
                      Its website can be found at \(unwrappedWebsite).
                      It was designed by \(unwrappedDesigner).
                      """
    print(message)
}

runProgram()

// nil-coalescing operator
var favoriteFood: String? = nil

print(favoriteFood ?? "No Favorite Food")

// optional chaining
var studentGovernment = [
    "president": "Shristi",
    "treasurer": "Diego"
]

if let presidentNameLength = studentGovernment["president"]?.count {
  print("The president's name is \(presidentNameLength) characters long")
}

if let vicePresidentNameLength = studentGovernment["vicePresident"]?.count {
  print("The vice president's name is \(vicePresidentNameLength) characters long")
} else {
  print("There is no vice president")
}

// optional in functions

let words = ["optionals", nil, "are", "great", nil, "at", "handling", nil, "values"]


func firstIndex(of target: String, in arr: [String?]) -> Int? {
    for i in arr.indices {
        guard let value = arr[i], value == target else { continue }
        return i
    }
    return nil
}

if let greatIndex = firstIndex(of: "great",in: words) {
  print(greatIndex)
}

if let badIndex = firstIndex(of: "bad",in: words) {
  print(badIndex)
} else {
  print("words does not contain the string ‘bad’")
}

// challenge #1 school database
struct Teacher {
    let id: Int
    let name: String
    var hairColor: String?
    var email: String?
}

struct Student {
    let name: String
    let favoriteTeacherID: Int
}

struct School {
    let name: String
    let teachers: [Teacher]

    func getTeacher(withID id: Int) -> Teacher? {
        for teacher in teachers {
            if teacher.id == id {
                return teacher
            }
        }
        return nil
    }
    
    func printFavoriteTeacherInfo(for student: Student) {
        guard let favoriteTeacher = getTeacher(withID: student.favoriteTeacherID) else {
            print("No teacher with the id \(student.favoriteTeacherID) works at \(name)!")
            return
        }
        print("\(student.name)'s favorite teacher is \(favoriteTeacher.name)")
        print("They have \(favoriteTeacher.hairColor ?? "no") hair")
        guard let email = favoriteTeacher.email else {
            print("They don't have an email address on file")
            return
        }
        print("Their email address is \(email)")
    }
}


let teachers = [
    Teacher(id: 592, name: "Mr. Weatherbee", hairColor: nil, email: "thebee@riverdale.com"),
    Teacher(id: 481, name: "Ms. Grundy", hairColor: "white", email: nil),
    Teacher(id: 688, name: "Mr. Adams", hairColor: "black", email: "arthurAdams@riverdale.com")
]

let riverdaleHigh = School(name: "Riverdale High", teachers: teachers)

let archie = Student(name: "Archie Andrews", favoriteTeacherID: 481)
let betty = Student(name: "Betty Cooper", favoriteTeacherID: 443)

riverdaleHigh.printFavoriteTeacherInfo(for: archie)
riverdaleHigh.printFavoriteTeacherInfo(for: betty)

//: [Next](@next)
