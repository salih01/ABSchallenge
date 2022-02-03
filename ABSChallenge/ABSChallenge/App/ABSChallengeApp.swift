//
//  ABSChallengeApp.swift
//  ABSChallenge
//
//  Created by Salih Çakmak on 26.01.2022.
//

import SwiftUI

@main
struct ABSChallengeApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView(abs: ABSData[0])
            } else {
                MenuView(row: rowData[0])
            }
            
        }
    }
}
