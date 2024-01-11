//
//  GradientMakerApp.swift
//  GradientMaker
//
//  Created by Russell Gordon on 2024-01-11.
//

import SwiftUI

@main
struct GradientMakerApp: App {
    
    @State var showInspector = true
    var body: some Scene {
        WindowGroup {
            ContentView(showInspector: $showInspector)
                .inspector(isPresented: $showInspector) {
                    InspectorView()
                }
        }
    }
}
