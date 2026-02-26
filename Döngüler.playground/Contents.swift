import UIKit

var greeting = "Hello, playground"

// Loops (loopy topic, it will take forever to understand)
// for loop
// let names = ["Anna","Alex","Brian","Jack"]
/* for name in names{
    print("Hello \(name)!")
} */

// let platforms = ["İos","macOS","watchOS","tvOS"]
/* for platform in platforms {
    print("Swift works great on \(platform)")
} */

/* for i in 1...12{
    print("5 times \(i) is \(5 * i)")
} */

 /* for k in 1...12{
   // print("The \(k) times table: ")
     for j in 1...k{
        print("\(k) x \(j) = \(k * j)")
    }
} */

for a in 1...3{
    print("--- DIŞ DÖNGÜ BAŞLADI (a: \(a)) ---")
    
    for b in 1...3{
        print("   İçerideyiz: a hala \(a), ama b değişiyor: \(b)")
    }
    
    print("--- DIŞ DÖNGÜ TURU BİTTİ, a artacak ---")
}

// challenglar
let sepetFiyatları = [50,20,100,30,10]
var toplam = 0
for fiyat in sepetFiyatları {
    toplam += fiyat
}
print("Toplam fiyat = \(toplam) ")

let modeller = ["BMW","Audi"]
let renkler = ["Siyah","Beyaz"]
for model in modeller {
    for renk in renkler {
        print("\(model)-\(renk)")
    }
}

let notlar = [45, 90, 32, 70, 100, 49]
for puan in notlar {
    if puan >= 50 {
        print("Gecen not: \(puan)")
    }
}

let kisiler = ["Mehmet", "Ayşe", "Ahmet", "Can", "Zeynep", "Murat"]
for kisi in kisiler {
    if kisi == "Ahmet" {
        continue
    } else if kisi == "Zeynep" {
        print("Zeynep bulundu")
        break
    }
    print("Kontrol ediliyor: \(kisi)")
    
}

let girlNames = [
    "Alex",
    "Gloria",
    "Suzanne",
    "Piper"
]
print(girlNames[0...3])

// while loop
var countdown = 10
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("blast of!!")

// repeat-while
var sayi = 10
while sayi < 5 {
    print("While çalıştı")
}

repeat {
    print("Repeat çalıştı")
} while sayi > 11
