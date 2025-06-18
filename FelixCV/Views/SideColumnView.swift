//
//  SideColumnSection.swift
//  FelixCV
//
//  Created by Felix Parey on 06/06/25.
//

import SwiftUI

struct SideColumnView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            SideColumnCVSection("Contact") {
                SideColumnSubheading("Telephone")
                Text(verbatim: "+49 174 5467901")
                    .font(.system(size: 10))
                    .padding(.bottom, 2)
                SideColumnSubheading("E-Mail")
                Text(verbatim: "contact@felixparey.com")
                    .font(.system(size: 10))
                    .padding(.bottom, 2)
                SideColumnSubheading("LinkedIn")
                Text(verbatim: "linkedin.com/in/felix-parey/")
                    .font(.system(size: 10))
                    .padding(.bottom, 2)
                SideColumnSubheading("Website")
                Text(verbatim: "felixparey.com")
                    .font(.system(size: 10))
                    .padding(.bottom, 2)
            }
            
            SideColumnCVSection("Skills") {
                SideColumnSubheading("Apple Frameworks & APIs")
                Text("SwiftUI, MapKit, SwiftData, CoreML, RealityKit, StoreKit, REST APIs, UIKit")
                    .font(.system(size: 10))
                    .padding(.bottom, 2)
                SideColumnSubheading("Developer Tools")
                Text("Xcode, Git, GitHub, App Store Connect")
                    .font(.system(size: 10))
                    .padding(.bottom, 2)
                SideColumnSubheading("Design Tools")
                    .font(.system(size: 10, weight: .bold))
                Text("Figma, Sketch, Photoshop, Illustrator")
                    .font(.system(size: 10))
                    .padding(.bottom, 2)
                SideColumnSubheading("Project Management")
                    .font(.system(size: 10, weight: .bold))
                Text("Scrum, Agile Methodologies, Jira, Confluence")
                    .font(.system(size: 10))
                    .padding(.bottom, 2)
            }
                        SideColumnCVSection("Languages") {
                            VStack(alignment: .leading, spacing: 5) {
                                Text("🇩🇪 **German** • Native")
                                Text("🇺🇸 **English** • C1")
                                Text("🇮🇹 **Italian** • B2")
                            }
                            .font(.system(size: 10))
                        }
            //            SideColumnCVSection("Interests") {
            //                Group {
            //                    VStack(alignment: .leading, spacing: 5) {
            //                        Text("🎬 TV Shows and Movies")
            //                        Text("🎹 Piano")
            //                        Text("🎙️ Singing")
            //                    }
            //                }
            //                .font(.subheadline)
            //            }
            Spacer()
        }
        .padding(10)
       // .background(.gray.opacity(0.2), in: .rect(cornerRadius: 15))
        .frame(width: 170)
    }
}

#Preview {
    SideColumnView()
}
