//
//  ExportCVView.swift
//  FelixCV
//
//  Created by Felix Parey on 03/06/25.
//

import SwiftUI
import AppKit

struct ExportCVView: View {
    var body: some View {
        ContentView()
        Button {
            saveAsPDF()
        } label: {
            Text("Export as PDF")
                .padding()
        }

    }
    
    @MainActor func render() -> URL {
            // 1: Render Hello World with some modifiers
            let renderer = ImageRenderer(content:
                ContentView()
            )

            // 2: Save it to our documents directory
            let url = URL.documentsDirectory.appending(path: "output.pdf")

            // 3: Start the rendering process
            renderer.render { size, context in
                // 4: Tell SwiftUI our PDF should be the same size as the views we're rendering
                var box = CGRect(x: 0, y: 0, width: size.width, height: size.height)

                // 5: Create the CGContext for our PDF pages
                guard let pdf = CGContext(url as CFURL, mediaBox: &box, nil) else {
                    return
                }

                // 6: Start a new PDF page
                pdf.beginPDFPage(nil)

                // 7: Render the SwiftUI view data onto the page
                context(pdf)

                // 8: End the page and close the file
                pdf.endPDFPage()
                pdf.closePDF()
            }

            return url
        }
    
    func saveAsPDF() {
            let tempURL = render()
            
            let savePanel = NSSavePanel()
            savePanel.title = "Save PDF"
            savePanel.nameFieldLabel = "File name:"
            savePanel.nameFieldStringValue = "CV.pdf"
            savePanel.allowedContentTypes = [.pdf]
            savePanel.canCreateDirectories = true
            
            savePanel.beginSheetModal(for: NSApp.keyWindow!) { response in
                if response == .OK {
                    guard let targetURL = savePanel.url else { return }
                    
                    do {
                        if FileManager.default.fileExists(atPath: targetURL.path) {
                            try FileManager.default.removeItem(at: targetURL)
                        }
                        try FileManager.default.copyItem(at: tempURL, to: targetURL)
                        
                        
                        
                        // Hide confirmation after delay
                        
                    } catch {
                       
                    }
                }
            }
        }
}

#Preview {
    ExportCVView()
}
