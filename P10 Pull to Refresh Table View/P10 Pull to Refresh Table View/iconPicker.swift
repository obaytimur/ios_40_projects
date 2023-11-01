//
//  iconPicker.swift
//  P10 Pull to Refresh Table View
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import SwiftUI
import SymbolPicker

struct IconPicker: View {
    @Binding var group: Groups
    var body: some View {
        SymbolPicker(symbol: $group.icon)
    }
}

struct IconPicker_Previews: PreviewProvider{
    static var previews: some View{
        IconPicker(group: .constant(Groups.sampleData[0]))
    }
}
