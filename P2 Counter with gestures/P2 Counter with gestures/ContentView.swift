//
//  ContentView.swift
//  P2 Counter with gestures
//
//  Created by Oğulcan Baytimur on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0

    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Text("\(counter)")
                    .toolbar {
                        Button(action: {
                            counter = 0
                        }) {
                            Text("Reset")
                                .font(.system(size: 25))
                        }
                    }
                Spacer()
                HStack{
                    Button(action: {
                        counter -= 1
                    }) {
                        Image(systemName: "minus")
                            .fixedSize()
                    }
                    Spacer()
                        .frame(width: 30)
                    Button(action: {
                        counter += 1
                    }) {
                        Image(systemName: "plus")
                            .fixedSize()
                    }
                    
                }
            }
            .navigationTitle("Counter")
            .font(.system(size: 50))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
