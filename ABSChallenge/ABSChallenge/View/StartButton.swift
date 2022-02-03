//
//  StartButton.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 27.01.2022.
//

import SwiftUI

struct StartButton: View {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    var body: some View {
        
        Button(action: {
            isOnboarding = false
            
        }) {
            HStack(spacing: 8){
                Text("Start")
                
                Image(systemName: "waveform.path.ecg")
                    .imageScale(.large)
            }
            .padding()
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
        }
        .accentColor(.white)
        
        
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
    }
}
