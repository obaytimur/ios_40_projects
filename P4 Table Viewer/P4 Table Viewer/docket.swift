//
//  docket.swift
//  P4 Table Viewer
//
//  Created by Oğulcan Baytimur on 21/10/2023.
//

import Foundation

struct docket: Identifiable {
    let id: UUID
    var name: String
    var items: [item]
    
    init(id: UUID = UUID(), name: String, items: [String]) {
        self.id = id
        self.name = name
        self.items = items.map{item(name: $0) }
    }
}

extension docket{
    struct item: Identifiable{
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyItem: docket {
        docket(name: "", items: [])
    }
}

extension docket{
    static let sampleData: [docket] =
    
    [
    docket(name: "Grocories", items: ["Milk", "Apple", "Bread"]),
    docket(name: "To do", items: ["Clean Bathroom", "Do Homework"])
    ]
}
