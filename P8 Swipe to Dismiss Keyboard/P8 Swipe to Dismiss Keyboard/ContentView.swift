//
//  ContentView.swift
//  P8 Swipe to Dismiss Keyboard
//
//  Created by Oğulcan Baytimur on 31/10/2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var text: String
    var body: some View {
        ScrollView{
            VStack {
                TextField("Enter Text", text: $text)
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
        .scrollDismissesKeyboard(.interactively)
    }
}

struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView(text: .constant(""))
    }
}
