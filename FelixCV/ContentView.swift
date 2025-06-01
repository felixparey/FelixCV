//
//  ContentView.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(width: 125, height: 150)
                    .foregroundStyle(.tertiary)
                    .overlay {
                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.gray.opacity(0.8))
                    }
                VStack(alignment: .leading) {
                    Text("Felix Parey")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("iOS Developer")
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                        .padding(.bottom, 10)
                    Text("Passionate iOS developer trained at the Apple Developer Academy in Naples with a focus on SwiftUI. Winner of the 2025 Swift Student Challenge and developer of a published App Store app. Experienced in building intuitive, user-centered apps with modern Apple frameworks.")
                }
            }
            Divider()
            HStack {
                VStack(alignment: .leading, spacing: 30) {
                    CVSection("Contact Information") {
                        Label {
                            Text(verbatim: "linkedin.com/in/felix-parey/")
                        } icon: {
                            Image(systemName: "lightbulb")
                                .frame(width: 20, alignment: .leading)
                        }
                        Label {
                            Text("+49 174 5467901")
                        } icon: {
                            Image(systemName: "phone")
                                .frame(width: 20, alignment: .leading)
                        }
                        Label {
                            Text(verbatim: "felix.parey@icloud.com")
                        } icon: {
                            Image(systemName: "envelope")
                                .frame(width: 20, alignment: .leading)
                        }
                    }
                    CVSection("Education") {
                        Text("Apple Developer Academy, Naples")
                            .fontWeight(.medium)
                    }
                    Spacer()
                }
                .containerRelativeFrame(.horizontal) { size, _ in
                    size * 0.35
                }
                
                Divider()
                VStack {
                    
                }
                Spacer()
            }
        }
        .overlay(alignment: .bottom) {
            Button("Download PDF") {
                print("Download PDF tapped")
            }
        }
        .padding()
        .frame(width: 612, height: 792, alignment: .top)
    }
}

#Preview {
    ContentView()
}
