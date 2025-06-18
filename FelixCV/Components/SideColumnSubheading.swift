//
//  SideColumnSubheading.swift
//  FelixCV
//
//  Created by Felix Parey on 18/06/25.
//

import SwiftUI

struct SideColumnSubheading: View {
    
    let text: LocalizedStringKey
    
    init(_ text: LocalizedStringKey) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 10, weight: .bold))
    }
}

#Preview {
    SideColumnSubheading("This is a subheading")
}
