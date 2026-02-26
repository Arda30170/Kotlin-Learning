import UIKit

var greeting = "Hello, playground"

/* Property Observers && Structs
struct StepCounter {
    // Stored Property
    var totalSteps: Int = 0 {
        willSet(newSteps) {
            print("Adım sayısı \(newSteps) olarak güncellenmek üzere...")
        }
        // Swift provides a oldValue constant for custom funconality
        didSet {
            if totalSteps > oldValue {
                print("Tebrikler! \(totalSteps - oldValue) yeni adım attınız.")
            }
        }
    }
}

var pedometer = StepCounter()
pedometer.totalSteps = 100
pedometer.totalSteps += 50
*/

// FitTracker (playground pratice)
struct Activity {
    let name: String
    var coloriesBurned: Int
    
    // custom init metod (usually swift creates a init metod at the background when we created instance of the struct)
    init(name: String, coloriesBurned: Int) {
        self.name = name
        self.coloriesBurned = coloriesBurned
        if coloriesBurned < 0 {
            self.coloriesBurned = 0
        }
    }
}

struct HydrationTracker {
    let dailyGoal: Double
    var currentWaterAmount: Double {
        // Property observers must be inside the variable in structs.
        didSet {
            // Negative value check
            if currentWaterAmount < 0 {
                print("Hatalı bir değer girdiniz.")
                currentWaterAmount = oldValue
                return
            }
            if currentWaterAmount >= dailyGoal {
                print("Tebriklerr, günlük su hedefine ulaştın.")
            }
            print("Şu ana kadar \(currentWaterAmount) litre su içtin, hedefine \(dailyGoal - currentWaterAmount) litre kaldı.")
        }
    }
}

struct UserStatus {
    var totalCaloriesConsumed: Int
    var totalCaloriesBurned: Int
    
    var netCalories: Int {
        get {
            return totalCaloriesConsumed - totalCaloriesBurned
        }
    }
    
    var fitnessStatus: String {
        if netCalories < 0 {
            return "Kilo verme modundasın."
        } else if netCalories > 0 && netCalories <= 500{
            return "Formunu koruyorsun."
        }
        return "Hacim kazanma (Bulking) modundasın."
    }
}

var hydrationTracker = HydrationTracker(dailyGoal: 5.0, currentWaterAmount: -2.5)
hydrationTracker.currentWaterAmount = -3.5
hydrationTracker.currentWaterAmount = 3.0

var userStatus = UserStatus(totalCaloriesConsumed: 2000, totalCaloriesBurned: 2200)
userStatus.totalCaloriesConsumed = 3300
print(userStatus.fitnessStatus)
