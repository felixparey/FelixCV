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
        
        VStack(alignment: .leading) {
            HeaderView()
                .padding(.bottom)
            HStack(alignment: .top, spacing: 10) {
                MainColumnView(withImage: withImage)
                Spacer()
                SideColumnView()
            }
            Spacer()
                    
            VStack(alignment: .leading) {
                    Text("This CV was written entirely in SwiftUI and the source code is available on GitHub.")
                    Text("I authorize the processing of personal data contained within my CV, according to GDPR (EU) 2016/679, Article 6.1(a)")
                }
                .font(.system(size: 9))
        }
        .padding(30)
        .frame(width: 612, height: 792, alignment: .top)
    }
}

#Preview {
    ContentView(withImage: false)
}
