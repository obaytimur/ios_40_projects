//
//  newGroupSheet.swift
//  P10 Pull to Refresh Table View
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import SwiftUI

struct newGroupSheet: View {
    @Binding var groups: [Groups]
    @State private var newGroup = Groups.emptyGroup
    var body: some View {
        NavigationStack{
            TextField("Group name", text: $newGroup.name)
            NavigationLink("Group Icon: \(Image(systemName: newGroup.icon))", destination: IconPicker(group: $newGroup))
        }
    }
}

struct newGroupSheet_Previews: PreviewProvider{
    static var previews: some View{
        newGroupSheet(groups: .constant(Groups.sampleData[0]))
    }
}
