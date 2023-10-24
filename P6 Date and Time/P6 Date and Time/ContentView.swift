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
        NavigationView{
            VStack {
                Text("The Current Date and Time")
                    .font(.headline)
                Text("\(todaysDate)")
                    .font(.title)
                    .frame(height: 40)
            }
            .toolbar {
                Button(action: {
                    todaysDate = Date.now.formatted(date: .long, time: .standard)
                }, label: {
                    Text("Refresh")
                        .foregroundColor(.white)
                })
            }
            .toolbarBackground(.black, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    ContentView()
}
