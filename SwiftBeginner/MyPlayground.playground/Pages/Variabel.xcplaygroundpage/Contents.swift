//: [Previous](@previous)

import Foundation

// declare variabel
var year: Int = 2022

print(year)

// Arithmetic operator
var amount = 18.50
var tip = amount * 0.2

print(tip)

// compound assign variabel
var apples = 16

apples -= 4
apples /= 2

print(apples)

// data type
var book: String = "Just Kids"

var pageCount: Int = 278

// string interpolation
var age: Int = 21

print("I am \(age) years old.")


// constants
let months: Int = 12


// challenge temperature
var tempf: Double = 32
var tempc: Double = 0

tempc = (tempf - 32) / 1.8

print("The temp is \(tempc) degrees Celsius")

// challenge body mass index

var weight: Double = 55
var height: Double = 174

var bmi: Double = weight/height * height

// challenge dog years
// assign dog age
var dogAge:Int = 10

// convert 2 years of dog age to human age
var earlyYears: Int = 21

/* rest of dog age that need convert to human age */
var laterYears: Int = (dogAge - 2) * 4

// result of human years
var humanYears: Int = earlyYears + laterYears

print("My name Upin! Ruff ruff, I am \(humanYears) years old in human years")

// quadratic formula
var a: Double = 3
var b: Double = -11
var c: Double = -4

var root1: Double
var root2: Double

root1 = b*b - 4 * a * c
root1 = -b + root1.squareRoot()
root1 = root1 / (2*a)

root2 = b*b - 4 * a * c
root2 = -b - root2.squareRoot()
root2 = root2 / (2*a)

print("Root 1 is \(root1)")
print("Root 2 is \(root2)")

// Citty Bank
var pesos: Double = 100
var reais: Double = 100
var soles: Double = 100

var total: Double = (pesos * 0.048) + (reais * 0.2) + (soles * 0.27)

print("US Dollars = $\(total)")


//: [Next](@next)
