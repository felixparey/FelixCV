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
            Text("iOS Developer")
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .padding(.bottom, 10)
            Text("Passionate iOS developer trained at the Apple Developer Academy in Naples with a focus on SwiftUI. Winner of the 2025 Swift Student Challenge and developer of a published App Store app. Experienced in building intuitive, user-centered apps with modern Apple frameworks.")
        }
    }
}

#Preview {
    MainColumnView()
}
