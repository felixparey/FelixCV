//
//  BulletPoint.swift
//  FelixCV
//
//  Created by Felix Parey on 17/06/25.
//

import SwiftUI

struct BulletPoint: View {
    
    var text: LocalizedStringKey
    
    init(_ text: LocalizedStringKey) {
        self.text = text
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 4) {
            Text("•")
            Text(text)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

#Preview {
    BulletPoint("")
}
