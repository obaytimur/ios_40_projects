//
//  ContentView.swift
//  P13 Sticky Section Headers
//
//  Created by Oğulcan Baytimur on 01/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sortedData = myData.sorted { $0["title"]! < $1["title"]!}
    @State private var sectionHeaderKeys: [String] = Array()
    @State private var realData: [[String : [String: String]]] = Array()
    var body: some View {
        Form {
            realData = dataConverter(inputVar: $sortedData)
            List {
                ForEach(realData.count){ index in
                    if sectionHeaderKeys.contains("\(realData[index].keys)") {
                        Text(realData[index][sectionHeaderKeys.last])
                    } else {
                        sectionHeaderKeys.append(realData[index].keys)
                        Section(header: Text("\(sectionHeaderKeys.last)"))
                    }
                }
            }
        }
    }
}

func dataConverter(inputVar: Binding<[[String:String]]>) -> Binding<[[String : [String: String]]]> {
    var outArray: [[String : [String: String]]] = Array()
    for index in inputVar.indices {
        outArray.append( [ "\(inputVar[index]["title"]!.first!)" : inputVar[index] ] )
    }
    return outArray
}

#Preview {
    ContentView()
}
