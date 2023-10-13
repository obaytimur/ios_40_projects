//
//  ContentView.swift
//  P2 Counter with gestures
//
//  Created by Oğulcan Baytimur on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var counter1 = 0
    @State private var counter2 = 0

    var body: some View {
        NavigationStack{
            VStack {
                HStack {
                    VStack{
                        Text("\(counter1)")
                            .toolbar {
                                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                                    Button(action: {
                                        counter1 = 0
                                    }) {
                                        Text("Reset")
                                            .font(.system(size: 25))
                                    }
                                }
                            }
                        Spacer()
                            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        HStack{
                            Button(action: {
                                counter1 -= 1
                            }) {
                                Image(systemName: "minus")
                                    .fixedSize()
                            }
                            .buttonRepeatBehavior(.enabled)
                            Spacer()
                                .frame(width: 15)
                            Button(action: {
                                counter1 += 1
                            }) {
                                Image(systemName: "plus")
                                    .fixedSize()
                            }
                            .buttonRepeatBehavior(.enabled)
                        }
                    }
                    Spacer()
                        .frame(width: 50)
                    VStack{
                        Text("\(counter2)")
                            .toolbar {
                                Button(action: {
                                    counter2 = 0
                                }) {
                                    Text("Reset")
                                        .font(.system(size: 25))
                                }
                            }
                        Spacer()
                            .frame(height: 100)
                        HStack{
                            Button(action: {
                                counter2 -= 1
                            }) {
                                Image(systemName: "minus")
                                    .fixedSize()
                            }
                            .buttonRepeatBehavior(.enabled)
                            Spacer()
                                .frame(width: 15)
                            Button(action: {
                                counter2 += 1
                            }) {
                                Image(systemName: "plus")
                                    .fixedSize()
                            }
                            .buttonRepeatBehavior(.enabled)
                        }
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
