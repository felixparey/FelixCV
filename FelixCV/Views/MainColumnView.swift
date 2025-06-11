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
                VStack(alignment: .leading) {
                    Text("Felix Parey")
                        .font(.system(size: 17, weight: .bold))
                    MainColumnCVSection("iOS Developer") {
                        Text("Passionate iOS developer trained at the Apple Developer Academy in Naples and Winner of the 2025 Swift Student Challenge. Experienced in building intuitive, user-centered apps with modern Apple frameworks. Seeking to contribute my skills in Swift and SwiftUI to a forward-thinking team dedicated to creating impactful mobile experiences.")
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.system(size: 11))
                    }
                }
                Spacer()
                
            }
            Divider()
                .padding(.vertical, 5)
            
            MainColumnCVSection("Skills") {
                Group {
                    Text("**Apple Frameworks & APIs:** SwiftUI, MapKit, SwiftData, CoreML, RealityKit, StoreKit, REST APIs, UIKit")
                    Text("**Developer Tools:** Xcode, Git, GitHub, App Store Connect")
                    Text("**Design & Project Management:** Figma, Scrum, Agile Methodologies, Jira")
                }
                .font(.system(size: 11))
            }
            
            Divider()
                .padding(.vertical, 5)
            
            MainColumnCVSection("Recent Projects") {
                MainColumnSubheading("Basic Strategy: Blackjack")
                Text("A simple and minimalistic Blackjack companion built with SwiftUI. The app features a clean, intuitive layout and smooth animations. Available on the App Store.")
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.system(size: 11))
                    .padding(.bottom, 5)
                
                MainColumnSubheading("Drawing Competition")
                Text("iPad game originally developed for the 2025 Swift Student Challenge. It allows users to draw animals in a competition against a friend. An AI model trained by myself classifies and rates the drawings to provide a score. The app got selected as a winner")
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.system(size: 11))
                    .padding(.bottom, 5)
                
                MainColumnSubheading("Lotus")
                Text("iPad app developed for an NGO in Mumbai, India. It helps social workers find children's houses using MapKit and SwiftData, integrating with an external database for synchronization. The app was handed over by a previous team and adopted by my team and me")
                    .font(.system(size: 11))
                    .fixedSize(horizontal: false, vertical: true)
            }
            
            Divider()
                .padding(.vertical, 5)
            
            MainColumnCVSection("Education") {
                MainColumnSubheading("Apple Developer Academy - PIER Student (2024-2025)")
                Text("Worked in an Agile Team using Scrum to work for an NGO in Mumbai, India. Development of an iPad app to help social workers of Schools near Slums to find children's houses using MapKit, SwiftData and an external Database.")
                    .font(.system(size: 11))
                    .padding(.bottom, 5)
                    .fixedSize(horizontal: false, vertical: true)
                
                MainColumnSubheading("Apple Developer Academy - Student (2023-2024)")
                Text("Learned how to go from problem statement to an Application multiple times over. For that Swift and SwiftUI was used alongside other apple frameworks and eternal libraries")
                    .font(.system(size: 11))
                    .padding(.bottom, 5)
                    .fixedSize(horizontal: false, vertical: true)
                
                MainColumnSubheading("Innerstädtisches Gymnasium Rostock - Abitur (2021-2023)")
                Text("Advanced Course in Informatics and English, representing my strong foundation in technology and communication. Elected Class representative for two years, demonstrating leadership and organizational skills.")
                    .font(.system(size: 11))
                    .fixedSize(horizontal: false, vertical: true)
                
            }
            
            Spacer()
            Divider()
                .padding(.vertical, 8)
            Group {
                HStack(spacing: 3) {
                    Text("Languages:")
                        .bold()
                    Text(verbatim: "German (native) • English (fluent) • Italian (B2)")
                }
                
                
                HStack(spacing: 3) {
                    Text("Contact:")
                        .bold()
                    
                    Text(verbatim: "felixparey.com • +49 174 5467901 • felix.parey@icloud.com • linkedIn.com/in/felix-parey")
                }
                .padding(.bottom, 1)
                Text("This CV was created using SwiftUI and exported as PDF. The source code is available [here](https://github.com/felixparey/FelixCV)."
                )
            }
            .font(.system(size: 11))
        }
    }
}

#Preview {
    ContentView(withImage: true)
}
