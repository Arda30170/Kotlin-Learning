import UIKit

var greeting = "Hello, playground"

var zar = 0

// repeat-while döngüsü en az bir kere çalıştıktan sonra while şartını sağlamayana dek çalışmaya devam eder.
/* repeat {
    zar = Int.random(in: 1...6)
    print("Zar atıldı: \(zar)")
} while zar != 6

var kahramanCan = 100
var canavarCan = 100

// fonksiyonlar
func ayiriciCizgi() {
    print("----------------")
}

func durumBildir(_ kim:String, can:Int) {
    print("***\(kim) tarafının güncel sağlığı: \(can)")
}

func hasarHesapla(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

while kahramanCan > 0 && canavarCan > 0 {
    let kahramanHasar = hasarHesapla(min: 10, max: 25)
    let canavarHasar = hasarHesapla(min: 5, max: 30)
    
    canavarCan -= kahramanHasar
    ayiriciCizgi()
    
    if canavarCan < 0 {
        canavarCan = 0
        print("Canavar öldü!!")
        print("Kazanan Kahraman oldu.")
        break
    }
    
    durumBildir("Canavar", can: canavarCan)
    
    kahramanCan -= canavarHasar
    ayiriciCizgi()
    
    if kahramanCan < 0 {
        kahramanCan = 0
        print("Oyun bitti! Kahramanın valhalaya doğru gitti.")
        print("Kazanan Canavar oldu.")
        break
    }
    
    durumBildir("Kahraman", can: kahramanCan)
} */

enum islem {
    case  toplama
    case  carpma
}

let islem_case = islem.toplama

func hesapla(tamSayi_1: Int, tamSayi_2: Int, islem: String = "carpma") ->  (sonuc: Int, yapilanIslem: String) {
    switch islem_case {
    case .toplama:
        return (tamSayi_1 + tamSayi_2, islem)
    case .carpma:
        return (tamSayi_1 * tamSayi_2, islem)
    }
}

let fonksiyonSonuc = hesapla(tamSayi_1: 5, tamSayi_2: 3)
print("İslem: \(fonksiyonSonuc.yapilanIslem), İslem sonucu: \(fonksiyonSonuc.sonuc)")

func pythagoras(a: Double, b: Double) -> Double {
    let input = (a * a) + (b * b)
    let root = sqrt(input)
    return root
}

var c = pythagoras(a: 3, b: 4)
print(c)

func getUser() -> (firsrName: String, lastName: String) {
    ("Taylor","Swift")
}

let names = getUser()
print(names.firsrName,names.lastName)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
characters.removeAll(keepingCapacity: true)
print(characters)

// handling function errors
enum PasswordError : Error {
    case short
    case obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

do {
    let result = try checkPassword("ard")
    print("password rating: \(result)")
} catch {
    print("There was an error")
}



