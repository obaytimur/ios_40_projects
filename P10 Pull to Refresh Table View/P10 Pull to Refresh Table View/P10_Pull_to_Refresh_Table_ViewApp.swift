//
//  P10_Pull_to_Refresh_Table_ViewApp.swift
//  P10 Pull to Refresh Table View
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import SwiftUI

@main
struct P10_Pull_to_Refresh_Table_ViewApp: App {
    @State private var groupArr = [Groups]()
    var body: some Scene {
        WindowGroup {
            ContentView(groupArr: $groupArr)
        }
    }
}
