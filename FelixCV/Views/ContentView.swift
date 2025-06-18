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
        
        VStack {
            HeaderView()
                .padding(.bottom)
            HStack(spacing: 10) {
                MainColumnView(withImage: withImage)
                Spacer()
                
                SideColumnView()
            }
        }
        .padding(30)
        .frame(width: 612, height: 792, alignment: .top)
    }
}

#Preview {
    ContentView(withImage: false)
}
