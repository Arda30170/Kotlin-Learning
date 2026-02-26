import UIKit

var greeting = "Hello, playground"

// Access Control (Encapsulaion)
struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    mutating func withDraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
var account = BankAccount()
account.deposit(amount: 1000)
let success = account.withDraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// Static methods and properties
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
print(School.studentCount)

struct Car {
    let model: String
    let numberOfSteats: Int
    private(set) var currentGear: Int
    static let maxGearCount = 6
    
    init(model: String, numberOfSteats: Int, currentGear: Int ) {
        self.currentGear = currentGear
        if currentGear > 6 {
            self.currentGear = 6
        }
        
        self.model = model
        self.numberOfSteats = numberOfSteats
    }
    
    mutating func shiftUp() {
        if currentGear < Car.maxGearCount {
            currentGear += 1
            print("Vites yükseltildi: \(currentGear)")
        } else {
            print("Hata: Zaten en yüksek vitestesin (\(Car.maxGearCount))!")
        }
    }
    mutating func shiftDown() {
         if currentGear > 1 {
              currentGear -= 1
              print("Vites düşürüldü: \(currentGear)")
        } else {
            print("Hata: Zaten en düşük vitestesin (1)!")
        }
    }
}

var car = Car(model: "aa", numberOfSteats: 5, currentGear: 10)
car.shiftUp()
