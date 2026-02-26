import UIKit

var greeting = "Hello, playground"

// Akıllı Bilet Simülasyonu

let biletFiyatları = [
    "Tren": 25.0,
    "Otobüs": 15.0,
    "Uçak": 150.0
]
var bakiye = 200.0
var secilenAraç = "Araba"
enum kartTipi {
    case öğrenci
    case tam
    case yas_65
}

//  BAŞTAN DRY-DRY-DRY! DİYE BAĞIRAN KODUM
/*  HATALARIM: KODUN MANTIK AKIŞINA DİKKAT EDİLMEDİ
    GERÇEK HAYAT İLE BAĞDAŞTIRMAM DAHA İYİ OLURDU


let kartSecimi = kartTipi.öğrenci
switch kartSecimi {
case .öğrenci:
    if let biletFiyatı = biletFiyatları[secilenAraç]{
        print("Araç bileti mevcut.")
        var öğrenciTutar = biletFiyatı - (biletFiyatı * 0.5)
        if bakiye >= öğrenciTutar{
            bakiye -= öğrenciTutar
            print("Yeni bakiyeniz: \(bakiye)")
        }else{
            print("Yeterli bakiyeniz bulunmuyor.")
        }
    }else{
        print("Bu araç mevcut değil.")
    }
case .tam:
    if let biletFiyatı_1 = biletFiyatları[secilenAraç]{
        print("Araç bileti mevcut.")
        if bakiye >= biletFiyatı_1{
            bakiye -= biletFiyatı_1
            print("Tutar: \(biletFiyatı_1) Yeni bakiyeniz: \(bakiye)")
        }else{
            print("Yeterli bakiyeniz bulunmuyor.")
        }
    }else{
        print("Bu araç mevcut değil.")
    }
case .yas_65:
    if let biletFiyatı_2 = biletFiyatları[secilenAraç]{
        print("Araç bileti mevcut.")
        print("Sizden bilet ücreti kesilmeyecek.")
    }else{
        print("Bu araç mevcut değil.")
    }
} */

// İYİLEŞTİRİLMİŞ HALİ

let kartSecimi = kartTipi.öğrenci
if let biletFiyatı = biletFiyatları[secilenAraç]{
    var ödenecekTutar = 0.0
    switch kartSecimi{
    case .öğrenci:
        ödenecekTutar = biletFiyatı - (biletFiyatı * 0.5)
    case .tam:
        ödenecekTutar = biletFiyatı
    case .yas_65:
        ödenecekTutar = 0.0
    }
    if bakiye >= ödenecekTutar{
        bakiye -= ödenecekTutar
        print("İşlem başarıyla tamamlandı.Yeni bakiyeniz: \(bakiye)")
    }else{
        print("Yetersiz bakiye! Gereken: \(ödenecekTutar) TL. Mevcut bakiye: \(bakiye)")
    }
}else{
    print("HATA '\(secilenAraç)' isimli araç sistemde mevcut değil.")
}
