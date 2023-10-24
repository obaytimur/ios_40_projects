//
//  ContentView.swift
//  P6 Date and Time
//
//  Created by Oğulcan Baytimur on 24/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var todaysDate = Date.now
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(todaysDate)")
            Button("Refresh") {
                todaysDate = Date.now
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
