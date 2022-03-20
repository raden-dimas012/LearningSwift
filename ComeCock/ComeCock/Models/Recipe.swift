//
//  Recipe.swift
//  ComeCock
//
//  Created by Raden Dimas on 18/03/22.
//

import SwiftUI

struct Recipe {
  var name: String
  var description: String
  var author: String
  var category: String //Breakfast, Lunch, Dinner, Dessert
  var ingredients: [String]
  var directions: [String]
}

struct MainInformation {
  var name: String
  var description: String
  var author: String
  var category: Category
 
  enum Category: String, CaseIterable {
    case breakfast = "Breakfast"
    case lunch = "Lunch"
    case dinner = "Dinner"
    case dessert = "Dessert"
  }
}

struct Ingredient {
  var name: String
  var quantity: Double
  var unit: Unit
 
  var description: String {
    let formattedQuantity = String(format: "%g", quantity)
    switch unit {
    case .none:
      let formattedName = quantity == 1 ? name : "\(name)s"
      return "\(formattedQuantity) \(formattedName)"
    default:
      if quantity == 1 {
        return "1 \(unit.singularName) \(name)"
        else {
          return "\(formattedQuantity) \(unit.rawValue) \(name)"
        }
      }
    }
 
    enum Unit: String, CaseIterable {
      case oz = "Ounces"
      case g = "Grams"
      case cups = "Cups"
      case tbs = "Tablespoons"
      case tsp = "Teaspoons"
      case none = "No Units"
 
      var singularName: String { String(rawValue.dropLast()) }
    }
}

 
struct Direction {
  var description: String
  var isOptional: Bool
}
