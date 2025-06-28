//
//  HeaderView.swift
//  FelixCV
//
//  Created by Felix Parey on 17/06/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Felix Parey")
                    .font(.system(size: 17, weight: .bold))
                Text("iOS DEVELOPER")
                    .foregroundStyle(.secondary)
                    .font(.system(size: 13, weight: .bold))
                    .padding(.bottom, 2.5)
                Text(
                    "I love creating applications for Apple platforms, which I learned for 2 years at the Apple Developer Academy in Naples, developing multiple apps and working with an NGO, helping over 10.000 children in underprivileged communities in Mumbai, India. I won Apple's Swift Student Challenge in 2025 with an app that uses Machine Learning to deliver a fun experience. My wish is to contribute my skills in Swift and SwiftUI to a team that shares the same passion to develop high-quality apps centered around the user experience. My goal is to create apps that are not only functional but also enjoyable to use, while continuously learning and growing as a developer."
                )
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
            }
            Spacer()
        }
    }
}

#Preview {
    HeaderView()
}
