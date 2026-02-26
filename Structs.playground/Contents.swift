import UIKit

// Structs (Yapılar)
struct Book {
    let title: String
    let author: String
    let publishYear: Int
    
    func printSummary() {
        print("\(title) is written by \(author) and published in \(publishYear)")
    }
}

let red = Book(title: "Wingss", author: "Arda", publishYear: 2002)
let moon = Book(title: "Carti", author: "Playboy", publishYear: 2016)

print(red.title,red.author)
red.printSummary()
moon.printSummary()

struct Employee {
    let name: String // stored property
    var vacationDayRemaining: Int
    
    // with 'mutating' keyword we can change property in methods
    mutating func takeVacation(days: Int) {
        if vacationDayRemaining > days {
            vacationDayRemaining -= days
            print("I'm going to vacation")
            print("Days remaining: \(vacationDayRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
    
}
// we can't change the struct if we create an instance constant
// let employee = Employee(name: "Arda", vacationDayRemaining: 10)
// employee.takeVacation(days: 5)

var employee_2 = Employee(name: "Emre", vacationDayRemaining: 10)
employee_2.takeVacation(days: 5)

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    // Computed Property (Hesaplanmış Özellik)
    // Sadece sayısal hesaplamalar için geçerli değil.
    // Temelde birer property fakat çalışma mantığı fonksiyona benziyor.
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) bir olimpiyat sporudur."
        } else {
            return "\(name) bir olimpiyat sporu değildir."
        }
    }
    var score = 0 {
        didSet {
            print("Şimdiki skor: \(score)")
        }
    }
}

var basket = Sport(name: "basket", isOlympicSport: false)
basket.score += 10
basket.score -= 5
basket.score += 17

let chess = Sport(name:"Satranç", isOlympicSport: true)
print(chess.olympicStatus)

struct Kare {
    var kenar: Double
    var alan: Double {
        get {
            return kenar * kenar
        }
        set(newValue) {
            kenar = sqrt(newValue)
            kenar = sqrt(newValue)
        }
    }
}

var benimKarem = Kare(kenar: 5)
print("Başlangıç alanı: \(benimKarem.alan)")
