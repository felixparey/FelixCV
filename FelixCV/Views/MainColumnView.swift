//
//  RightColumnSection.swift
//  FelixCV
//
//  Created by Felix Parey on 06/06/25.
//

import SwiftUI

struct MainColumnView: View {
    
    var withImage: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                        Text("Felix Parey")
                            .font(.system(size: 24, weight: .bold))
                    MainColumnCVSection("iOS Developer") {
                        Text("Passionate iOS developer trained at the Apple Developer Academy in Naples with a focus on SwiftUI. Winner of the 2025 Swift Student Challenge and developer of a published App Store app. Experienced in building intuitive, user-centered apps with modern Apple frameworks.")
                            .font(.system(size: 11))
                    }
                }
                Spacer()
                if withImage {
                    Image(.felix)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(height: 120)
                }
            }
            Divider()
                .padding(.vertical, 8)
                
            MainColumnCVSection("Projects") {
                MainColumnSubheading("Basic Strategy: Blackjack")
                Text("A simple and minimalistic Blackjack companion built with SwiftUI, showcasing my understanding of game logic and user interface design. The app features a clean, intuitive layout and smooth animations.")
                    .font(.system(size: 11))
                    .padding(.bottom, 8)
                 
                MainColumnSubheading("Drawing Competition")
                Text("iPad game originally developed for the 2025 Swift Student Challenge. It allows users to draw animals in a competition against a friend. An AI model trained by myself classifies and rates the drawings to provide a score. The app got selected as a winner")
                    .font(.system(size: 11))
                    .padding(.bottom, 8)
                    
                MainColumnSubheading("Lotus")
                Text("iPad app developed for an NGO in Mumbai, India. It helps social workers find children's houses using MapKit and SwiftData, integrating with an external database for synchronization. The app was handed over by a previous team and adopted by my team and me")
                    .font(.system(size: 11))
                    .padding(.bottom, 8)
                
                MainColumnSubheading("Others")
                Text("Developed smaller projects showcasing knowledge of advanced technologies like RealityKit for visionOS, CoreML for AI integration, Firebase for backend services, StoreKit for in-app purchases, RESTful APIs for data fetching, and more. These projects demonstrate my ability to adapt and learn new technologies quickly.")
                    .font(.system(size: 11))
            }
           
            Divider()
                .padding(.vertical, 8)
            
            MainColumnCVSection("Education") {
                MainColumnSubheading("Apple Developer Academy - PIER Student (2024-2025)")
                Text("Worked in an Agile Team using Scrum to work for an NGO in Mumbai, India. Development of an iPad app to help social workers of Schools near Slums to find children's houses using MapKit, SwiftData and an external Database.")
                    .font(.system(size: 11))
                    .padding(.bottom, 8)
                MainColumnSubheading("Apple Developer Academy - Student (2023-2024)")
                Text("Learned how to go from problem statement to an Application multiple times over. For that Swift and SwiftUI was used alongside other apple frameworks and eternal libraries")
                    .font(.system(size: 11))
                    .padding(.bottom, 8)
                MainColumnSubheading("Innerstädtisches Gymnasium Rostock - Abitur (2021-2023)")
                Text("Advanced Course in Informatics and English, representing my strong foundation in technology and communication. Elected Class representative for two years, demonstrating leadership and organizational skills.")
                    .font(.system(size: 11))
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView(withImage: true)
}
