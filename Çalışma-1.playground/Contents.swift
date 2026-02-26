import UIKit

var greeting = "Hello, playground"

var urunStokları = [
    "Laptop": 5,
    "Mouse": 4,
    "Monitor": 4
]
var urunFiyatları = [
    "Laptop": 15000.0,
    "Mouse": 500.0,
    "Monitor": 1200.0
]
var bakiye = 20000.0
var istenenUrun = "Klavye"

enum kuponlar{
    case yeniMusteri // 100TL sabit indirim
    case efsaneCuma // %20 indirim
    case yok // indirim yok
}

let kupon = kuponlar.yeniMusteri

// 1.olarak istenen urunun fiyat bilgisi tutar hesaplanması icin alınır.
if let urunFiyatı = urunFiyatları[istenenUrun] {
    // 2.olarak urunun stok kontrolu yapılır cunku ona gore satıs gerceklestirilir.
    if (urunStokları[istenenUrun] ?? 0) > 0 {
        var tutar = 0.0
        switch kupon{
        case .yeniMusteri:
            print("Tebriklerr! Yeni müsteri kuponu kazandınız.")
            tutar = urunFiyatı - 100
        case .efsaneCuma:
            print("Efsanee!! cumaya ozel %20 indirim kodu kazandınız.")
            tutar = urunFiyatı - (urunFiyatı * 0.2)
        case .yok:
            tutar = urunFiyatı
        }
        if bakiye >= tutar {
            // 3.olarak bakiye kontrolune gore tutar eksiltilir ve stok guncellenir.
            bakiye -= tutar
            urunStokları[istenenUrun]! -= 1
            print("Odenecek tutar: \(tutar) ve kalan bakiyeniz: \(bakiye)")
        }else{
            print("Yeterli bakiyeniz bulunmamaktadır.")
        }
    } else{
        print("Maalesef aradıgınız urun stokta mevcut degil.")
    }

} else{
    print("Maalesef aradıgınız urun yok.")
}
