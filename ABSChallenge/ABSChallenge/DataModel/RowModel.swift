//
//  RowModel.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 1.02.2022.
//

import SwiftUI


struct ROW : Identifiable {
    
    var id = UUID()
    var image : String
    var title : String
    var description : String
}

let  rowData : [ROW]  = [
    
    ROW(image: "fit2", title: "ABS WORKOUT 1", description: " ABS AND CHEST WORKOUT"),
    ROW(image: "fit3", title: "ABS WORKOUT 2", description: " ABS AND CHEST WORKOUT 2")
    
]
