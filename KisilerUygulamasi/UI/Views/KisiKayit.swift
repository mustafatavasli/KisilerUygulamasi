//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Mustafa TAVASLI on 25.03.2024.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiAdi: UITextField!
    @IBOutlet weak var tfTelefonNumarasi: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }

    @IBAction func btnKaydet(_ sender: Any) {
        if let kisiAdi = tfKisiAdi.text, let telefonNumarasi = tfTelefonNumarasi.text {
                kaydet(kisiAdi: kisiAdi, telefonNumarasi: telefonNumarasi)
        }
    }
    
    func kaydet(kisiAdi : String, telefonNumarasi : String) {
        print("Kişi Kaydet : \(kisiAdi) - \(telefonNumarasi)")
    }
}
