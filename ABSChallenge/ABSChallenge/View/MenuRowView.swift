//
//  MenuRow.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 31.01.2022.
//

import SwiftUI

struct MenuRowView: View {
    var  row : ROW

    
    var body: some View {
        

                
        HStack {
            Image(row.image)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 140, height: 100)
                .cornerRadius(15)
                .shadow(radius: 20)
            
            VStack(alignment:.leading) {
                Text(row.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .padding(.trailing,10)
                    .padding(.bottom,5)
                
                Text(row.description)
                    .font(.system(size: 14, weight: .light, design: .rounded))
                    .foregroundColor(.secondary)
            }
            .frame(width: 180 , height: 90)
            
            
        }
        
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(row: rowData[0])
    }
}
