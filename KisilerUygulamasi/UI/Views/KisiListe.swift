//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Mustafa TAVASLI on 25.03.2024.
//

import UIKit

class KisiListe: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnDetay(_ sender: Any) {
        let kisi = Kisiler(id: 1, ad: "Mustafa", numara: "541 810 34 64")
        performSegue(withIdentifier: "toKisiDetay", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toKisiDetay" {
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
            }
        }
    }
    
}

