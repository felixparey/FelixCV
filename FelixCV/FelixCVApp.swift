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
            ContentView()
        }
        .windowStyle(.hiddenTitleBar)
        .commands {
                    CommandGroup(after: .pasteboard) { // Inserts after Cut/Copy/Paste
                        Divider()
                        Button("Export PDF") {
                            ExportManager().saveAsPDF()
                        }
                        .keyboardShortcut("E", modifiers: [.command, .shift])
                    }
                }
    }
}
