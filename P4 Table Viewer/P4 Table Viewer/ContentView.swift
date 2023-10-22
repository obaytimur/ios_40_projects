//
//  ContentView.swift
//  P4 Table Viewer
//
//  Created by Oğulcan Baytimur on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var dockets: [docket]
    var body: some View {
        NavigationStack {
            List($dockets){ $docket in
                NavigationLink(destination: detailView(dockets: $docket)) {
                    cardView(docket: docket)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView(dockets: .constant(docket.sampleData))
    }
}
