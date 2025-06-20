//
//  FelixCVApp.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI

@main
struct FelixCVApp: App {
    
    @State private var withImage: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ContentView(withImage: withImage)
        }
        .windowIdealSize(.fitToContent)
        .windowStyle(.hiddenTitleBar)
        .commands {
            CommandGroup(after: .pasteboard) {
                Divider()
                Button("Export PDF") {
                    ExportManager().saveAsPDF(withImage: true)
                }
                .keyboardShortcut("E", modifiers: [.command, .shift])
                Button("Export PDF without Image") {
                    ExportManager().saveAsPDF(withImage: false)
                }
            }
            CommandGroup(after: .sidebar) {
                Button("Show/Hide Image") {
                    withImage.toggle()
                }
                Divider()
            }
        }
    }
}
