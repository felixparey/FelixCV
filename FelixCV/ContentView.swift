//
//  ContentView.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 20) {
                Image(.felix)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 12.5))
                
                Text("Felix Parey")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, -10)
                
                CVSection("Information") {
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
                CVSection("Languages") {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("🇩🇪 **German** • Native")
                        Text("🇺🇸 **English** • C1")
                        Text("🇮🇹 **Italian** • B2")
                    }
                    .font(.subheadline)
                }
                
                CVSection("Achievements") {
                    Text("Swift Student Challenge\nWinner (2025)")
                        .font(.subheadline)
                }
                CVSection("Interests") {
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
            VStack {
                
            }
            VStack(alignment: .leading) {
                Text("iOS Developer")
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 10)
                Text("Passionate iOS developer trained at the Apple Developer Academy in Naples with a focus on SwiftUI. Winner of the 2025 Swift Student Challenge and developer of a published App Store app. Experienced in building intuitive, user-centered apps with modern Apple frameworks.")
            }
        }
        .padding()
        .frame(width: 612, height: 792, alignment: .top)
    }
}

#Preview {
    ContentView()
}
