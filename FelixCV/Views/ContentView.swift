//
//  ContentView.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack(spacing: 10) {
            SideColumnView()
            MainColumnView()
        }
        .padding()
        .frame(width: 612, height: 792, alignment: .top)
    }
}

#Preview {
    ContentView()
}
