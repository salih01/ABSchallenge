//
//  AbsCardDetail.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 2.02.2022.
//

import SwiftUI

struct AbsCardDetail: View {
    
    var row : ROW
    
    var body: some View {
        
        VStack {
            Image(row.image)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .cornerRadius(30)
            
            Spacer()
            Text(row.title)

        }
        .frame(width: 350, height: 350)
    }
}

struct AbsCardDetail_Previews: PreviewProvider {
    static var previews: some View {
        AbsCardDetail(row: rowData[0])
            .preferredColorScheme(.dark)
    }
}
