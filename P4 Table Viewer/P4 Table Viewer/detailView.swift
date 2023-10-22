//
//  detailView.swift
//  P4 Table Viewer
//
//  Created by Oğulcan Baytimur on 22/10/2023.
//

import SwiftUI

struct detailView: View {
    @Binding var dockets: docket
    
    var body: some View {
        List {
            Section(header: Text(dockets.name)) {
                ForEach(dockets.items) { itemName in
                    Label(itemName.name, systemImage: "person")
                }
            }
        }
    }
}

struct detailView_Previews: PreviewProvider{
    static var previews: some View{
        detailView(dockets: .constant(docket.sampleData[0]))
    }
}
