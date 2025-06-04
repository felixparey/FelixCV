//
//  FelixCVApp.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI

@main
struct FelixCVApp: App {
    var body: some Scene {
        WindowGroup {
            ExportCVView()
                .preferredColorScheme(.dark)
        }
    }
}
