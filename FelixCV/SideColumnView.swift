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
            Image(.felix)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 12.5))
            
            Text("Felix Parey")
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical, -10)
            
            SideColumnCVSection("Information") {
                Group {
                    VStack(alignment: .leading, spacing: 5) {
                        Label("20 years old (2005)", systemImage: "calendar")
                        Label("+49 174 5467901", systemImage: "phone.fill")
                        Label {
                            Text(verbatim: "felix.parey@icloud.com")
                        } icon: {
                            Image(systemName: "envelope.fill")
                        }
                    }
                }
                .font(.subheadline)
            }
            SideColumnCVSection("Languages") {
                VStack(alignment: .leading, spacing: 5) {
                    Text("🇩🇪 **German** • Native")
                    Text("🇺🇸 **English** • C1")
                    Text("🇮🇹 **Italian** • B2")
                }
                .font(.subheadline)
            }
            
            SideColumnCVSection("Achievements") {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Swift Student Challenge\nWinner (2025)")
                    Text("App released on the App Store")
                }
            }
            SideColumnCVSection("Interests") {
                Group {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("🎬 TV Shows and Movies")
                        Text("🎹 Piano")
                        Text("🎙️ Singing")
                    }
                }
                .font(.subheadline)
            }
            Spacer()
        }
        .padding(10)
        .background(.gray.opacity(0.2), in: .rect(cornerRadius: 15))
        .frame(width: 170)
    }
}

#Preview {
    SideColumnView()
}
