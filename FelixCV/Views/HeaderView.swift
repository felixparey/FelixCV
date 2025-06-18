//
//  HeaderView.swift
//  FelixCV
//
//  Created by Felix Parey on 17/06/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Felix Parey")
                .font(.system(size: 17, weight: .bold))
            MainColumnCVSection("iOS Developer") {
                Text(
                    "Passionate iOS developer trained at the Apple Developer Academy in Naples and Winner of the 2025 Swift Student Challenge. Experienced in building intuitive, user-centered apps with modern Apple frameworks. Seeking to contribute my skills in Swift and SwiftUI to a forward-thinking team dedicated to creating impactful mobile experiences."
                )
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 10))
            }
        }
    }
}

#Preview {
    HeaderView()
}
