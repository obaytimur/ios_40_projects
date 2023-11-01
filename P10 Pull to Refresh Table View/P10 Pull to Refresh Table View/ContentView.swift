//
//  ContentView.swift
//  P10 Pull to Refresh Table View
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var groupArr: [Groups]
    @State private var isNewGroupPressed = false
    var body: some View {
        NavigationStack{
            List($groupArr){$group in
                Section(header: Label(group.name, systemImage: group.icon)){
                    ForEach(group.subItems, id: \.self){item in
                    Text(item)}
                }
            }
            .navigationTitle("Lists")
            .toolbar{
                ToolbarItem{
                    Button("Add"){
                        isNewGroupPressed = true
                    }
                }
            }
        }
        .sheet(isPresented: $isNewGroupPressed) {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView(groupArr: .constant(Groups.sampleData))
    }
}
