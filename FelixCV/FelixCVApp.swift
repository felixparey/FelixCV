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
        .windowIdealSize(.fitToContent)
        .windowStyle(.hiddenTitleBar)
        .commands {
            CommandGroup(after: .pasteboard) {
                Divider()
                Button("Export PDF") {
                    ExportManager().saveAsPDF()
                }
                .keyboardShortcut("E", modifiers: [.command, .shift])
            }
        }
    }
}
