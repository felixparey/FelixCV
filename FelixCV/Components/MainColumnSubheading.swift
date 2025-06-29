//
//  MainColumnSubheading.swift
//  FelixCV
//
//  Created by Felix Parey on 08/06/25.
//

import SwiftUI

struct MainColumnSubheading: View {
    
    var text: LocalizedStringKey
    
    init(_ text: LocalizedStringKey) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 10, weight: .semibold))
            .textCase(.uppercase)
    }
}

#Preview {
    MainColumnSubheading("This is a subheading")
}
