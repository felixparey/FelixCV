//
//  ContentView.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("iOS Developer")
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                    .padding(.bottom, 10)
                Text("Passionate iOS developer trained at the Apple Developer Academy in Naples with a focus on SwiftUI. Winner of the 2025 Swift Student Challenge and developer of a published App Store app. Experienced in building intuitive, user-centered apps with modern Apple frameworks.")
            }
            .safeAreaPadding(.leading, 190)
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
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Swift Student Challenge\nWinner (2025)")
                        Text("App released on the App Store")
                    }
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
            .background {
                ZStack(alignment: .topLeading) {
                    VStack {
                        Circle().foregroundStyle(.blue.gradient.opacity(0.5))
                        Spacer()
                        Circle().foregroundStyle(.blue.gradient.opacity(0.5))
                            .frame(width: 75, height: 75)
                            .offset(x: 15)
                    }
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.ultraThinMaterial)
                        .stroke(LinearGradient(colors: [.clear, .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 1)
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 2, y: 2)
                }

            }
            .frame(width: 170)
        }
        .padding()
        .frame(width: 612, height: 792, alignment: .top)
    }
}

#Preview {
    ContentView()
}

#Preview {
     ContentView()
        .preferredColorScheme(.dark)
 }
