//
//  Kisiler.swift
//  KisilerUygulamasi
//
//  Created by Mustafa TAVASLI on 25.03.2024.
//

import Foundation

class Kisiler {
    var id : Int?
    var ad : String?
    var numara : String?
    
    init() {}
    
    init(id: Int? = nil, ad: String? = nil, numara: String? = nil) {
        self.id = id
        self.ad = ad
        self.numara = numara
    }
}
