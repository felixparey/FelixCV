//
//  SectionHeader.swift
//  FelixCV
//
//  Created by Felix Parey on 01/06/25.
//

import SwiftUI

struct SideColumnCVSection<Content: View>: View {
    let content: Content
    let sectionTitle: String
    
    init(_ sectionTitle: String, @ViewBuilder content: () -> Content) {
        self.sectionTitle = sectionTitle
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(sectionTitle)
                .textCase(.uppercase)
                .foregroundStyle(.secondary)
                .font(.subheadline)
                .fontWeight(.bold)
                .padding(.bottom, 2.5)
            content
        }
    }
}

#Preview {
    SideColumnCVSection("Education") {
        Text("This is a section in my CV.")
    }
        .frame(width: 400, height: 400)
}
