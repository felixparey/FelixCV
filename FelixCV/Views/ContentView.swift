//
//  ContentView.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            HeaderView()
                .padding(.bottom)
            HStack(alignment: .top, spacing: 10) {
                MainColumnView()
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
        .padding(40)
        .frame(width: 630, height: 891, alignment: .top)
    }
}

#Preview {
    ContentView()
}
