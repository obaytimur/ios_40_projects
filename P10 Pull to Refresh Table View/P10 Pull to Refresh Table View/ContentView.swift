//
//  ContentView.swift
//  P10 Pull to Refresh Table View
//a
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var groupArr: [Groups]
    @State private var isNewGroupPressed = false
    @State private var isEditPressed = false
    @State private var groupBuffer = [Groups]()
    
    var body: some View {
        NavigationStack{
            List($groupArr, editActions: .all) {$group in
                Section(header: Label(group.name, systemImage: group.icon)
                                    .font(.headline)
                                    .foregroundStyle(.black)
                ){
                    ForEach(group.subItems, id: \.self){item in
                        Text(item)
                    }
                }
            }
            .swipeActions {
                                        Button(role: .destructive){
                                            print("Delete Item")
                                        } label: {
                                            Label("Delete", systemImage: "trash")
                                        }
                                    }
            .navigationBarItems(leading: EditButton())
            .refreshable {
                try? await Task.sleep(nanoseconds: 500_000_000)
                groupArr.append(contentsOf: groupBuffer)
            }
            .navigationTitle("Groups")
            .toolbar{
                ToolbarItem{
                    Button("Add"){
                        isNewGroupPressed = true
                    }
                }
            }
        }
        .sheet(isPresented: $isNewGroupPressed) {
            newGroupSheet(groups: $groupBuffer, isNewGroupPressed: $isNewGroupPressed)
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView(groupArr: .constant(Groups.sampleData))
    }
}
