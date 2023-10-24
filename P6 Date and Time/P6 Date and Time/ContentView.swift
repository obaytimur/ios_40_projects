//
//  ContentView.swift
//  P6 Date and Time
//
//  Created by Oğulcan Baytimur on 24/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var todaysDate = Date.now.formatted(date: .long, time: .standard)
    
    var body: some View {
        VStack {
            Text("\(todaysDate)")
            Button(action: {
                todaysDate = Date.now.formatted(date: .long, time: .standard)
            }, label: {
                Text("Refresh")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
