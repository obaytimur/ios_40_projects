//
//  P8_Swipe_to_Dismiss_KeyboardApp.swift
//  P8 Swipe to Dismiss Keyboard
//
//  Created by Oğulcan Baytimur on 31/10/2023.
//

import SwiftUI

@main
struct P8_Swipe_to_Dismiss_KeyboardApp: App {
    @State private var exampleString = ""
    var body: some Scene {
        WindowGroup {
            ContentView(text: $exampleString)
        }
    }
}
