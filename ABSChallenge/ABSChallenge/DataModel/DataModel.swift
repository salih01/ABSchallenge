//
//  DataModel.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 30.01.2022.
//

import Foundation


struct ABS : Identifiable {
    
    var id = UUID()
    var image : String
    var title : String
    
}

let ABSData : [ABS] = [
    
    ABS( image: "fit12", title: "HAZIR MISIN SIX PACKLERE ?"),
    ABS( image: "fit13", title: "HAZIR değilsen başlama aq"),
    ABS( image: "fit11", title: "Reklamlara tıkla ki para kazanalım ")

    
]
