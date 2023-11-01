//
//  Groups.swift
//  P10 Pull to Refresh Table View
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import Foundation


struct Groups: Identifiable, Codable{
    var name: String
    var id: UUID
    var icon: String
    var subItems = [String]()
    
    init(name: String, id: UUID = UUID(), icon: String, subItems: [String]) {
        self.name = name
        self.id = id
        self.icon = icon
        self.subItems = subItems
    }
}

extension Groups{
    static var emptyGroup: Groups{
        Groups(name: "", icon: "note", subItems: ["Item 1", "Item 2", "Item 3"])
    }
}

extension Groups{
    static let sampleData: [Groups] =
    [
        Groups(name: "Animals", icon: "note", subItems: ["Horse", "Monkey", "Donkey"]),
        Groups(name: "Devices", icon: "note", subItems: ["Macbook", "iPhone", "Ipad"])
    ]
}
