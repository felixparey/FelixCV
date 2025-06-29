//
//  FelixCVApp.swift
//  FelixCV
//
//  Created by Felix Parey on 31/05/25.
//

import SwiftUI
import Combine

@main
struct FelixCVApp: App {
    @StateObject private var languageManager = LanguageManager()
    @State private var isSettingsPresented = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(languageManager)
                .environment(\.locale, languageManager.locale)
                .sheet(isPresented: $isSettingsPresented) {
                    SettingsView(languageManager: languageManager, isPresented: $isSettingsPresented)
                        .environment(\.locale, languageManager.locale)
                }
        }
        .windowIdealSize(.fitToContent)
        .windowStyle(.hiddenTitleBar)
        .commands {
            CommandGroup(after: .saveItem) {
                Button("Export PDF") {
                    ExportManager(languageManager: languageManager).saveAsPDF()
                }
                .environment(\.locale, languageManager.locale)
                .keyboardShortcut("E", modifiers: [.command, .shift])
            }
            CommandGroup(replacing: .appSettings) {
                Button("Settings") {
                    isSettingsPresented = true
                }
                .environment(\.locale, languageManager.locale)
                .keyboardShortcut(",", modifiers: [.command])
            }
        }
    }
}
