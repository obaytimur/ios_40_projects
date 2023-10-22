//
//  P4_Table_ViewerApp.swift
//  P4 Table Viewer
//
//  Created by Oğulcan Baytimur on 20/10/2023.
//

import SwiftUI

@main
struct P4_Table_ViewerApp: App {
    @State private var stored = docket.sampleData
    var body: some Scene {
        WindowGroup {
            ContentView(dockets: $stored)
        }
    }
}
