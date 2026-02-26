import UIKit

// Closures
var greeting =  {
    print("Hello, playground")
}

let selamlar = { (isim: String) -> String in
    return "Selamlar sana \(isim) namı-değer yüce developer"
}
selamlar("Arda")

// Basic Closure
let karesiniAl = { (sayi: Int) -> Int in
    return sayi * sayi
}

var sonuc = karesiniAl(5)

func getUserData(for Id: Int) -> String {
    if Id == 1899 {
        return "Iron Man"
    } else {
        return "Captain America"
    }
}
// Taking copy of the function
let data: (Int) -> String = getUserData
let user = data(1899)

let teamSpidey = ["Apiderman","Kenom","Zpidergwen","Miles","Xpidernoir"]

// sorted function accepts a function as paramter
func captainFirstSorted(name_1: String, name_2: String) -> Bool {
    if name_1 == "Apiderman" {
        return true
    } else if name_2 == "Kpiderman" {
        return false
    }
    return name_1 < name_2
}

let sortedTeam = teamSpidey.sorted(by: captainFirstSorted)


// Swift allow us to use '$0 and $1' shorthand parameteres names in closures
let teamIronMan = ["Spiderman","Widow","Rhodey","Thor"]
let teamIronMan_Sorted = teamIronMan.sorted {
    if $0 == "Widow" {
        return false
    } else if $1 == "Thor" {
        return true
    }
    return $0 > $1
}
