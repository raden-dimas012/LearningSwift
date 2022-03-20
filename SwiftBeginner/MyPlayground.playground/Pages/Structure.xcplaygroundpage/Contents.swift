//: [Previous](@previous)

import Foundation

// creating a structure
struct Cat {
  var age: Int
  var isGood: Bool
}

// default property values
struct Book {
  var title = ""
  var pages = 0
  
}

// instance
struct Book {
  var pages = 0
  var title = ""
}

var myFavBook = Book()

// access and edit property
struct Book {
  var pages = 0
  var title = ""
}

var myFavBook = Book()

// Write your code below: 📚
print(myFavBook.pages)
myFavBook.pages = 640
print(myFavBook.pages)

myFavBook.title = "The Book"
print(myFavBook.title)

// init
struct Book {
  var title: String
  var pages: Int

  init(title: String, pages: Int) {
      self.title = title
      self.pages = pages
  }

}

var theHobbit = Book(title: "The Hobbit",pages: 300)

// memberwise init
struct Band {
  var genre: String
  var members: Int
  var isActive: Bool
}

var maroon5 = Band(genre: "pop",members: 5,isActive: true)

// methods
truct Band {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }

  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    } else {
       return "..."
    }
  }
}

var fooFighters = Band(genre: "rock",members: 6,isActive: true)

print(fooFighters.pumpUpCrowd())

// mutating methods
struct Band {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }
  
  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    } else {
      return "..."
    }
  }

  mutating func changeGenre(newGenre: String) -> String {
    self.genre = newGenre
    return self.genre
  }
  
}

var journey = Band(genre: "jazz", members: 5, isActive: true)

var bandsNewGenre = journey.changeGenre(newGenre: "rock")

print(bandsNewGenre)

// type of
struct Band {
  var genre: String
  var members: Int
  var isActive: Bool
  
  init(genre: String, members: Int, isActive: Bool) {
    self.genre = genre
    self.members = members
    self.isActive = isActive
  }
  
  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    } else {
      return "..."
    }
  }
  
  mutating func changeGenre(newGenre: String) -> String {
    self.genre = newGenre
    return self.genre
  }
  
}

var journey = Band(genre: "rock", members: 5, isActive: true)

print(type(of: journey))

var bts: Band = Band(genre: "kpop",members: 7,isActive: true)

// structures are value types
struct Finch {
  var lengthInCm: Double
  var nestLocation: String

  init(lengthInCm: Double, nestLocation: String) {
    self.lengthInCm = lengthInCm
    self.nestLocation = nestLocation
  }
}

var groundFinch = Finch(lengthInCm: 15.0, nestLocation: "Bush")

var cactusFinch = groundFinch
cactusFinch.nestLocation = "Cactus"

print(cactusFinch.nestLocation)
print(groundFinch.nestLocation)

// challenge #1 gym
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int
  
  init(name: String, muscleGroups: [String], reps: Int,  sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = sets * reps
  }
}

var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and you're going to:")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
      print("That's a total of \(exercise.totalReps) \(exercise.name)s")
    }
  }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises:[pushUp])

mondayRegimen.printExercisePlan()

//: [Next](@next)
