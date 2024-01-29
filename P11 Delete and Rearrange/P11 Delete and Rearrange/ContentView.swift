//
//  ContentView.swift
//  P11 Delete and Rearrange
//
//  Created by Oğulcan Baytimur on 29/01/2024.
//

import SwiftUI

struct ContentView: View {
    struct groceryItem: Identifiable, Hashable {
        var id = UUID()
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    @State private var groceries: [groceryItem] = Array()
    @State private var newItemName = ""
    var body: some View {
        NavigationView{
            List {
                ForEach(groceries, id: \.self) { item in
                    Text(item.name)
                }
                .onDelete(perform: { indexSet in
                    groceries.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    groceries.move(fromOffsets: indices, toOffset: newOffset)
                })
                HStack{
                    TextField("New Item", text: $newItemName)
                    Button() {
                        let newItem = groceryItem(name: newItemName)
                        groceries.append(newItem)
                        newItemName = ""
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newItemName.isEmpty)
                }
            }
            .toolbar {
                EditButton()
            }
            .navigationTitle("Groceries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

