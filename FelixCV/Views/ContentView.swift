//
//  ContentView.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    var withImage: Bool
    var body: some View {
        
        HStack(spacing: 10) {
          //  SideColumnView()
            MainColumnView(withImage: withImage)
        }
        .padding(24)
        .frame(width: 612, height: 792, alignment: .top)
    }
}

#Preview {
    ContentView(withImage: true)
}
