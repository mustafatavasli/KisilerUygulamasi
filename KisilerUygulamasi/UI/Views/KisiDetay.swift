//
//  KisiDetay.swift
//  KisilerUygulamasi
//
//  Created by Mustafa TAVASLI on 25.03.2024.
//

import UIKit

class KisiDetay: UIViewController {
    
    @IBOutlet weak var tfKisiAdi: UITextField!
    @IBOutlet weak var tfTelefonNumarasi: UITextField!
    
    var kisi : Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let kullanici = kisi {
            tfKisiAdi.text = kullanici.ad
            tfTelefonNumarasi.text = kullanici.numara
        }
    }
    
    @IBAction func btnGuncelle(_ sender: Any) {
        if let kisiAdi = tfKisiAdi.text, let telefonNumarasi = tfTelefonNumarasi.text, let k = kisi {
            guncelle(kisiId: k.id!, kisiAdi: kisiAdi, telefonNumarasi: telefonNumarasi)
        }
        
        func guncelle(kisiId : Int , kisiAdi : String, telefonNumarasi : String) {
            print("Kişi Kaydet : \(kisiId) - \(kisiAdi) - \(telefonNumarasi)")
        }
    }
}
