// Create an observable object to manage the app's language
import SwiftUI

class LanguageManager: ObservableObject {
    @AppStorage("selectedLanguage") var selectedLanguage: String = Locale.current.language.languageCode?.identifier ?? "en" {
        didSet {
            objectWillChange.send()
        }
    }

    var locale: Locale {
        Locale(identifier: selectedLanguage)
    }

    var supportedLanguages: [String: String] {
        [
            "en": "English",
            "de": "Deutsch"
        ]
    }
}
