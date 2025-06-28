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
            MainColumnCVSection("Education") {
                MainColumnSubheading("Apple Developer Academy - PIER Student (2024-2025)")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("Worked in an Agile Team in sprints using Scrum with tools like Jira and Confluence")
                    BulletPoint("Worked on an iPad app, that was deployed and actively being used, for an NGO in India: The Akanksha Foundation")
                    BulletPoint("Gained Experience in working with external clients through meetings and a trip to India")
                    BulletPoint("Deep understanding of SwiftData, connection to an external Database (FileMaker) and usage of MapKit for Navigation and Location Tracking")
                }
                .font(.system(size: 10))
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 5)
                
                MainColumnSubheading("Apple Developer Academy - Student (2023-2024)")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("Created multiple apps based on real-world problems following extensive research and applying human centered design")
                    BulletPoint("Learned how to work in newly formed teams with people from all over the world")
                    BulletPoint("Used design tools like Figma and Sketch and gained experience in Swift Frameworks like RealityKit, CoreML, MapKit and SwiftData")
                    BulletPoint("Practiced public speaking and presenting projects in front of an audience")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
                .padding(.bottom, 5)
                
                MainColumnSubheading("Innerstädtisches Gymnasium Rostock - Abitur (2021-2023)")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("Advanced Course in Informatics, showing strong foundation in technology")
//                    BulletPoint("Elected Class representative for two years, demonstrating leadership and organizational skills")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
            }
            .padding(.bottom, 10)
            MainColumnCVSection("Recent Projects") {
                MainColumnSubheading("Basic Strategy: Blackjack • App Store")
                
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("Published on the App Store with users in 30 different countries")
                    BulletPoint("Uncluttered design with a focus on usability and simplicity")
                    BulletPoint("Usage of latest technologies like SwiftUI, UserDefaults and StoreKit 2")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
                .padding(.bottom, 5)
                
                MainColumnSubheading("Drawing Competition • TestFlight")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("Winning project of the 2025 Swift Student Challenge")
                    BulletPoint("Usage of PencilKit, RealityKit, SwiftUI, CoreML")
                    BulletPoint("Contains self-trained Image Classification AI model trained through CreateML")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
                .padding(.bottom, 5)
                
                MainColumnSubheading("Other Projects")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("**Sleepot**: uses on-device AI to extract problems from a message")
                    BulletPoint("**Duck Rescue**: 3D game for Apple Vision Pro with RealityKit and SwiftUI")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    MainColumnView()
}
