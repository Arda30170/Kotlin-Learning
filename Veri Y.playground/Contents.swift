import UIKit

var greeting = "Hello, playground"

// Arrays
var beatles = ["John","Paul", "Ringo", "George"]
var number = [1,3,7,9,12,5,4]

print(beatles)
print(beatles[0],beatles[1])
beatles.append("Arda") // for adding new item to the array

/* let firstBeatle = beatles[0]
let firstNumber = number[0]
var mixedValue = firstBeatle + firstNumber */

beatles.count
beatles.remove(at: 2)
print(beatles)

/* Fonksiyondan optimizasyon için arrayı referans alan bir 'ReversedCollection' yollar. */
var reversedBeatles = beatles.reversed()
print(reversedBeatles)

let realReversedBeatles = Array(beatles.reversed())
print(realReversedBeatles)

// Sorted(sıfat olan) fonksiyonu orijinal diziye dokunmaz ve sıralanmış bir kopyasını döndürür.
let sortedNumber = number.sorted()
print(sortedNumber)

// Sort (fiil olan) orijinal diziyi değiştirir ve geriye void döndürür.
var duraklar = ["kızılay", "ulus","aydınlıkevler"]
duraklar.sort()
print(duraklar)

// Dictionaries: alternatives for arrays

let employee = [
    "isim": "arda",
    "unvan": "uygulama gelistirici",
    "giris_tarihi": "17-07-2021",
    "sube": "Armada"
]
print(employee["isim", default: "unknown"]) // eğer yazdırmak istediğimiz veri (key) mevcut değilse bir 'default' değer  atayabiliriz.
print(employee["unvan", default: "unknown"])

let olympics = [
    2012: "London",
    2016: "Rio",
    2021: "Tokyo"
]
print(olympics[2012, default: "NewYork"])

// key-value veri tipini önceden belirttiğimiz boş bir dictionary.
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaq"] = 216
heights["Lebron James"] = 206

// dict yapılarında keyler mutlaka birbirinden farklı olmalı ve tekrar etmemelidir.
var archEnemies = [
    "Batman": "The Joker",
    "Superman": "Lex Luthor",
    "Captain America": "Red Skull"
]
archEnemies["Batman"] = "Penguin"
archEnemies.removeValue(forKey: "Captain America")

let results = [
    "french": 100,
    "english": 90,
    "math": 100
]

// Set
let uniqueLetters: Set<String> = ["a","b","c","d","e","a"]
print(uniqueLetters)

var actors = Set(["Denzel","Tom","Will","Robert"])
actors.insert("Ben Affleck")
print(actors)

let sortedActors = actors.sorted()
print(sortedActors)
