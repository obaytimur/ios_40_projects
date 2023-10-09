//
//  ContentView.swift
//  P1 Tap Counter
//
//  Created by Oğulcan Baytimur on 26/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .background(Rectangle()
            .foregroundColor(Color(UIColor.systemBackground)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
