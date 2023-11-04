//
//  Groups.swift
//  P10 Pull to Refresh Table View
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import Foundation

struct Items: Identifiable{
    var id: UUID
    var items = [String]()
    
    init(id: UUID = UUID(), items: [String] = [String]()) {
        self.id = id
        self.items = items
    }
}

struct Groups: Identifiable, Codable{
    var name: String
    var id: UUID
    var icon: String
    var subItems = Items
    
    init(name: String, id: UUID = UUID(), icon: String, subItems: Items) {
        self.name = name
        self.id = id
        self.icon = icon
        self.subItems = subItems
    }
}

extension Groups{
    static var emptyGroup: Groups{
        Groups(name: "", icon: "note", Items: [])
    }
}

extension Groups{
    static let sampleData: [Groups] =
    [
        Groups(name: "Animals", icon: "note", subItems: ["Horse", "Monkey", "Donkey"]),
        Groups(name: "Devices", icon: "note", subItems: ["Macbook", "iPhone", "Ipad"])
    ]
}
