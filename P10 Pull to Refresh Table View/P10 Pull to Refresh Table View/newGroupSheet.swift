//
//  newGroupSheet.swift
//  P10 Pull to Refresh Table View
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import SwiftUI

struct newGroupSheet: View {
    @Binding var groups: [Groups]
    @Binding var isNewGroupPressed: Bool
    @State private var newGroup = Groups.emptyGroup
    @State private var newItem = ""
    var body: some View {
        NavigationStack{
            List{
                Section{
                    TextField("Group name", text: $newGroup.name)
                    NavigationLink("Group Icon: \(Image(systemName: newGroup.icon))", destination: IconPicker(group: $newGroup))
                }
                Section{
                    ForEach(newGroup.subItems, id: \.self){item in
                        Text(item)}
                    HStack{
                        TextField("Add Item", text: $newItem)
                        Button(action: {
                            withAnimation{
                                newGroup.subItems.append(newItem)
                                newItem = ""
                            }
                        }){
                            Image(systemName: "plus.circle.fill")
                        }
                        .disabled(newItem.isEmpty)
                    }
                }
            }
            .navigationTitle("New Group")
            .toolbar{
                ToolbarItem{
                    Button("Add"){
                        groups.append(newGroup)
                        isNewGroupPressed = false
                    }
                    .font(.headline)
                }
            }
        }
    }
}

struct newGroupSheet_Previews: PreviewProvider{
    static var previews: some View{
        newGroupSheet(groups: .constant(Groups.sampleData), isNewGroupPressed: .constant(false))
    }
}
