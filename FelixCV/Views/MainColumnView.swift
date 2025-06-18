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
                if withImage {
                    Image(.felix)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(.rect(cornerRadius: 10))
                        .frame(height: 120)
                }
                
            }
            MainColumnCVSection("Education") {
                MainColumnSubheading("Apple Developer Academy - PIER Student (2024-2025)")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("Worked in an Agile Team using Scrum with tools like Jira and Confluence")
                    BulletPoint("Learned how to do proper Code Reviews and work on a project from a previous team")
                    BulletPoint("Gained Experience in working with external clients through meetings and a trip to India")
                }
                .font(.system(size: 10))
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 5)
                
                MainColumnSubheading("Apple Developer Academy - Student (2023-2024)")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("Going from problem statement to an Application multiple times over")
                    BulletPoint("Learned how to work in newly formed teams with people from all over the world")
                    BulletPoint("Designed apps in Figma and Sketch and coded in Xcode using Swift")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
                .padding(.bottom, 5)
                
                MainColumnSubheading("Innerstädtisches Gymnasium Rostock - Abitur (2021-2023)")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("Advanced Course in Informatics, showing strong foundation in technology")
                    BulletPoint("Elected Class representative for two years, demonstrating leadership and organizational skills")
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
                
                MainColumnSubheading("Lotus")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("iPad app in collaboration with NGO Akanksha in India")
                   BulletPoint("Complex database structure with SwiftData for local caching and FileMaker for external database")
                    BulletPoint("Usage of MapKit for customized Navigation and Location Tracking")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
                .padding(.bottom, 5)
                
                MainColumnSubheading("Other Projects")
                VStack(alignment: .leading, spacing: 0) {
                    BulletPoint("**Sleepot**: Helps you clear your mind before sleeping using on-device AI to detect problems")
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
    ContentView(withImage: false)
}
