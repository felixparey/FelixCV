// Create a SwiftUI view for changing the app's language using LanguageManager
import SwiftUI

struct SettingsView: View {
    @ObservedObject var languageManager: LanguageManager
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Language", selection: $languageManager.selectedLanguage) {
                    ForEach(Array(languageManager.supportedLanguages.keys), id: \.self) { code in
                        Text(languageManager.supportedLanguages[code] ?? code).tag(code)
                    }
                }
                Button("Done") {
                    isPresented = false
                }
                
            }
            .padding()
        }
    }
}


#Preview {
    SettingsView(languageManager: LanguageManager(), isPresented: .constant(true))
}
