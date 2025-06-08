//
//  RightColumnSection.swift
//  FelixCV
//
//  Created by Felix Parey on 06/06/25.
//

import SwiftUI

struct MainColumnView: View {
    var body: some View {
        VStack(alignment: .leading) {
            MainColumnCVSection("iOS Developer") {
                Text("Passionate iOS developer trained at the Apple Developer Academy in Naples with a focus on SwiftUI. Winner of the 2025 Swift Student Challenge and developer of a published App Store app. Experienced in building intuitive, user-centered apps with modern Apple frameworks.")
            }
            Divider()
                .padding(.vertical, 10)
            MainColumnCVSection("Projects") {
                MainColumnSubheading("Basic Strategy: Blackjack")
                Text("A simple and minimalistic Blackjack companion built with SwiftUI, showcasing my understanding of game logic and user interface design. The app features a clean, intuitive layout and smooth animations.")
                    .padding(.bottom)
                MainColumnSubheading("Drawing Competition")
                Text("iPad game originally developed for the 2025 Swift Student Challenge. It allows users to draw animals in a competition against a friend. An AI model trained by myself classifies and rates the drawings to provide a score. The app got selected as a winner")
                    .padding(.bottom)
                MainColumnSubheading("Lotus")
                Text("iPad app developed for an NGO in Mumbai, India. It helps social workers find children's houses using MapKit and SwiftData, integrating with an external database for synchronization. The app was handed over by a previous team and adopted by my team and me")
            }
           
            Divider()
                .padding(.vertical, 10)
            MainColumnCVSection("Education") {
                MainColumnSubheading("Apple Developer Academy - PIER Student")
                Text("Worked in an Agile Team using Scrum to work for an NGO in Mumbai, India. Development of an iPad app to help social workers of Schools near Slums to find children's houses using MapKit, SwiftData and an external Database.")
                    .padding(.bottom)
                MainColumnSubheading("Apple Developer Academy - Student")
                Text("Learned how to go from problem statement to an Application multiple times over. For that Swift and SwiftUI was used alongside other apple frameworks and eternal libraries")
                    
                
            }
           
            Spacer()
        }
    }
}

#Preview {
   ContentView()
}
