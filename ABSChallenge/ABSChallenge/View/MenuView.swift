//
//  MenuView.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 31.01.2022.
//

import SwiftUI

struct MenuView: View {
    
    var row : ROW
    
    var body: some View {
        
        NavigationView{
             
                List {
                    ForEach(rowData[0...1]) { item in
                        NavigationLink(destination:AbsCardDetail(row: item) ){
                            MenuRowView(row: item)
                            //.padding(.vertical,4)
                        }
                          
                    }
                    //.padding()
                }
                .navigationTitle("ABS Workout !")
            }
            //.frame(width:390)
           
       
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(row: rowData[0])
            
    }
}
