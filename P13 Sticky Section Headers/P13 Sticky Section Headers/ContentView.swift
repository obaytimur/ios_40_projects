//
//  ContentView.swift
//  P13 Sticky Section Headers
//
//  Created by Oğulcan Baytimur on 01/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sortedData = myData.sorted { $0["title"]! < $1["title"]!}
    
    var body: some View {
        let realData = arrayToDict(inputArray: sortedData)
        let letters = realData.keys.sorted()
        ScrollViewReader { scrollProxy in
            ZStack {
                List {
                    ForEach(realData.keys.sorted(), id: \.self) { key in
                        Section(header: Text("\(key)")) {
                            if let values = realData[key] {
                                ForEach(values, id: \.self){ dict in
                                    if let text = dict["title"] {
                                        Text(text)
                                    }
                                }
                            }
                        }
                    }
                }
                VStack {
                    ForEach(letters, id: \.self) { letter in
                        HStack {
                            Spacer()
                            Button( action: {
                                withAnimation {
                                    scrollProxy.scrollTo(letter)
                                }
                            }, label: {
                                Text(letter)
                                    .font(.system(size: 15))
                            })
                        }
                    }
                }
            }
        }
    }
    
    func arrayToDict(inputArray: [ [String : String] ] ) ->  [String : [ [String:String] ] ] {
        var outputDict: [String : [ [String : String] ] ] = [:]
        for dict in inputArray {
            let key = dict["title"]?.first
            outputDict["\(key!)", default: [ [ : ] ] ].append(dict)
        }
        return outputDict
    }
}

#Preview {
    ContentView()
}
