//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Mustafa TAVASLI on 25.03.2024.
//

import UIKit

class KisiListe: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerListesi = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let kisi1 = Kisiler(id: 1, ad: "Mustafa", numara: "541 810 34 64")
        let kisi2 = Kisiler(id: 2, ad: "Zeynep", numara: "542 xxx xx xx")
        let kisi3 = Kisiler(id: 3, ad: "Batuhan", numara: "536 xxx xx xx")
        kisilerListesi.append(kisi1)
        kisilerListesi.append(kisi2)
        kisilerListesi.append(kisi3)
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

extension KisiListe : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kişi Adı : \(searchText)")
    }
}

extension KisiListe : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListesi[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! KisilerHucre
        
        hucre.lblKisiAdi.text = kisi.ad
        hucre.lblTelefonNumarasi.text = kisi.numara
        
        return hucre
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListesi.count
    }
}
