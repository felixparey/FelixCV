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
                        Group {
//                            HStack(spacing: 3) {
//                                Text("Languages:")
//                                    .bold()
//                                Text(verbatim: "German (native) • English (fluent) • Italian (B2)")
//                            }
                            
                            HStack(spacing: 3) {
                                Text("Contact:")
                                    .bold()
                                
                                Text(verbatim: "felixparey.com • +49 174 5467901 • felix.parey@icloud.com • linkedIn.com/in/felix-parey")
                            }
                            .padding(.bottom, 1)
                        }
                        .font(.system(size: 11))
                        //                        Text("Passionate iOS developer trained at the Apple Developer Academy in Naples and Winner of the 2025 Swift Student Challenge. Experienced in building intuitive, user-centered apps with modern Apple frameworks. Seeking to contribute my skills in Swift and SwiftUI to a forward-thinking team dedicated to creating impactful mobile experiences.")
                        //                            .fixedSize(horizontal: false, vertical: true)
                        //                            .font(.system(size: 11))
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
                    HStack(spacing: 3) {
                        Text("Languages:")
                            .bold()
                        Text(verbatim: "German (native) • English (fluent) • Italian (B2)")
                    }
                }
                .font(.system(size: 11))
            }
            
            Divider()
                .padding(.vertical, 5)
            
            MainColumnCVSection("Recent Projects") {
                MainColumnSubheading("Basic Strategy: Blackjack")
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("• Published on the App Store with users in 30 different countries")
                    Text("• Uncluttered design with a focus on usability and simplicity")
                    Text("• Usage of latest technologies like SwiftUI, UserDefaults and StoreKit 2")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 11))
                .padding(.bottom, 5)
                
                MainColumnSubheading("Drawing Competition")
                VStack(alignment: .leading, spacing: 0) {
                    Text("• Winning project of the 2025 Swift Student Challenge")
                    Text("• Usage of PencilKit, RealityKit, SwiftUI, CoreML")
                    Text("• Contains self-trained Image Classification AI model trained through CreateML")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 11))
                .padding(.bottom, 5)
                
                MainColumnSubheading("Lotus")
                VStack(alignment: .leading, spacing: 0) {
                    Text("• iPad app in collaboration with NGO Akanksha in India")
                    Text("• Field-tested in person with the client and user in Mumbai")
                    Text("• Complex database structure with SwiftData for local caching and FileMaker for external database")
                    Text(" • Usage of MapKit for customized Navigation and Location Tracking")
                }
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 11))
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
                Text("Learned how to go from problem statement to an Application multiple times over. For that Swift and SwiftUI was used alongside other apple frameworks and external libraries")
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
            Text("This CV was created using SwiftUI and exported as PDF. The source code is available [here](https://github.com/felixparey/FelixCV).")
                .font(.system(size: 11))
        }
    }
}

#Preview {
    ContentView(withImage: false)
}
