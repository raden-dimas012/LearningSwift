//: [Previous](@previous)

import Foundation

// level of access
struct Cat {
    
    public func speak() {
        print("Meeeeoooowww")
    }
    
    internal let color = "Black"
    
    fileprivate var age : Int = 2
    
    private var type = "Ragdoll"
    
}

let scrambles = Cat()

scrambles.speak()

print(scrambles.color)

print(scrambles.age)

// implementation

struct Office {
    let paperclipCost = 10
    // type property
    static var paperclipSalesRecord: Int = 0
    
    // oberver property
    private var paperclipSales: Int  {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips")
            if newValue > Office.paperclipSalesRecord {
              Office.paperclipSalesRecord = newValue
            }
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips")
        }
    }
    
    // geter and setter computed property
    var totalRevenue : Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }
    private func getSecretRevenue() -> Int {
        return 100
    }
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
    }
}

// extension of office
extension Office {
  static func printCurrentRecord() {
    print("The current record for paperclip sales is \(paperclipSalesRecord)")
  }
  var paperclipColor: String {
    return "gray"
  }
}

var alphaOffice = Office(paperclipSales: 18)
alphaOffice.totalRevenue = 400

// Use the new methods and properties here:
Office.printCurrentRecord()

print("Alpha Office’s paperclips are \(alphaOffice.paperclipColor)")

// challenge #1 swift bank
struct BankAccount {
    
    // Static Properties
    
    static let depositBonusRate = 0.01
    
    // Private Properties
    
    private var balance: Double = 0 {
        didSet {
            if balance < 100 {
                displayLowBalanceMessage()
            }
        }
    }
    
    private let password: String
    
    // Initializers
        
    init(initialDeposit: Double, password: String) {
        self.password = password
        makeDeposit(ofAmount: initialDeposit)
    }
    
    // Internal Methods
    
    mutating func makeDeposit(ofAmount depositAmount: Double) {
        let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
        print("Making a $\(depositWithBonus) deposit")
        self.balance += depositWithBonus
    }
    
    mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
        if !isValid(password) {
            print("Error: Invalid password. Cannot make withdrawal.")
            return
        }
        print("Making a $\(withdrawalAmount) withdrawal.")
        self.balance -= withdrawalAmount
    }
    
    func displayBalance(usingPassword password: String) {
        if !isValid(password) {
            print("Error: Invalid password. Cannot retrieve balance.")
            return
        }
        print("Your current balance is $\(balance).")
    }
    
    // Private Methods
 
    private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
        return deposit + (deposit * BankAccount.depositBonusRate)
    }
    
    private func isValid(_ enteredPassword: String) -> Bool {
        return password == enteredPassword
    }
    
    private func displayLowBalanceMessage() {
        print("Alert: Your balance is under $100.")
    }
}
 
var myAccount = BankAccount(initialDeposit: 500, password: "Satoshi")
myAccount.makeDeposit(ofAmount: 50)
myAccount.displayBalance(usingPassword: "Satoshi")
myAccount.makeWithdrawal(ofAmount: 500, usingPassword: "Craig")
myAccount.makeWithdrawal(ofAmount: 500, usingPassword: "Satoshi")
myAccount.displayBalance(usingPassword: "Satoshi")
myAccount.makeDeposit(ofAmount: 100)
myAccount.displayBalance(usingPassword: "Satoshi")

//: [Next](@next)
