//
//  ContentView.swift
//  GradientMaker
//
//  Created by Russell Gordon on 2024-01-11.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Computed properties
    @State var startingColor: Color = .red
    @State var endingColor: Color = .blue
    
    // MARK: Stored properties
    var body: some View {
        
        let selectedGradient = Gradient(colors: [startingColor, endingColor])
        
        VStack {
            LinearGradient(gradient: selectedGradient, startPoint: .leading, endPoint: .trailing)
            
            HStack {
                ColorPicker("Starting Color", selection: $startingColor)
                
                ColorPicker("Ending Color", selection: $endingColor)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
