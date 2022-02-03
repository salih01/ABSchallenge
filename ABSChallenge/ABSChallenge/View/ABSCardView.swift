//
//  ABSCardView.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 26.01.2022.
//

import SwiftUI

struct ABSCardView: View {

    @State private var isAnimating : Bool = false
    
    var abs : ABS

    var body: some View {
    
        ZStack {
            
            VStack(spacing: 20) {
                
                Image(abs.image)
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    //.frame(width: 350, height: 700)
                    .frame( maxWidth: 350, maxHeight: 600, alignment: .center)
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
            }
            

            VStack {
                Text(abs.title)
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                Spacer()
                StartButton()
           
            }
            .frame(width: 350, height: 500)

            
        }
        
        .onAppear{
                
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        
    }
}

struct ABSCardView_Previews: PreviewProvider {
    static var previews: some View {
        ABSCardView(abs: ABSData[0])
    }
}
