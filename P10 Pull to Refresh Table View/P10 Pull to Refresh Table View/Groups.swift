//
//  Groups.swift
//  P10 Pull to Refresh Table View
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import Foundation

struct Item: Identifiable, Codable, Hashable{
    var id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String){
        self.id = id
        self.name = name
    }
}

struct Groups: Identifiable, Codable, Hashable{
    var name: String
    var id: UUID
    var icon: String
    var subItems: [Item]
    
    init(name: String, id: UUID = UUID(), icon: String, subItems: [Item]) {
        self.name = name
        self.id = id
        self.icon = icon
        self.subItems = subItems
    }
}

extension Groups{
    static var emptyGroup: Groups{
        Groups(name: "", icon: "note", subItems: [Item]() )
    }
}

extension Groups{
    static let sampleData: [Groups] =
    [
        Groups(name: "Animals", icon: "note", subItems: [Item(name: "Horse"), Item(name: "Monkey"), Item(name: "Donkey")]),
        Groups(name: "Devices", icon: "note", subItems: [Item(name: "Horse"), Item(name: "Monkey"), Item(name: "Donkey")])
    ]
}
