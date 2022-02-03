//
//  OnboardingView.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 28.01.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    var abs : ABS

    
    var body: some View {
        
        TabView {
            ForEach(ABSData[0...2]){ item in
                
                ABSCardView(abs: item)
                   
            }
        }
        
        .frame(width:500, height: 700)
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .padding()
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(abs: ABSData[0])
    }
}
