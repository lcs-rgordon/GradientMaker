//
//  ContentView.swift
//  GradientMaker
//
//  Created by Russell Gordon on 2024-01-11.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var showInspector: Bool
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView(showInspector: .constant(true))
        .inspector(isPresented: .constant(true)) {
            InspectorView()
        }

}
