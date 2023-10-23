//
//  ContentView.swift
//  P5 Tip Calculator
//
//  Created by Oğulcan Baytimur on 23/10/2023.
//

import SwiftUI

struct KeyboardView: View {
    @FocusState private var isInputActive: Bool
    @Binding var amount: String
    
    var body: some View {
        NavigationView{
            TextField("$0.00", text: $amount)
                .multilineTextAlignment(.trailing)
                .font(.system(size: 120))
                .keyboardType(.decimalPad)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()

                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
        }
    }
}

struct ContentView: View {
    
    @State private var totalAmount = ""
    @State private var tipPercantage: Double = 15.0
    @State private var isEditing = false

    
    var body: some View {
        NavigationStack{
            VStack{
                KeyboardView(amount: $totalAmount)
                HStack{
                    Spacer()
                    Text("Tip (%\(Int(tipPercantage))) amount: $\(String(format: "%.2f", calculation(totalAmount, tipPercantage) ))")
                        .font(.headline)
                }
                HStack{
                    Spacer()
                    Text("Total amount: $\(String(format: "%.2f", sum(calculation(totalAmount, tipPercantage), totalAmount)))")
                        .font(.headline)
                }
                Slider(value: $tipPercantage, in: 10...30, step:1){
                    Text("Tip percantage")
                } minimumValueLabel: {
                    Text("Broke\nAF")
                } maximumValueLabel: {
                    Text("Rich")
                } onEditingChanged: { editing in
                    isEditing = editing
                }
                .scaleEffect(0.9)
            }
            .navigationBarTitle("Tip Calculator")
            .navigationBarItems(trailing:
                Button("Edit"){
                
            })
    }
}

    func calculation (_ total: String,_ percentage: Double) -> Double {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        if let totalAsDouble = nf.number(from: total)?.doubleValue {
            return totalAsDouble * percentage / 100
        }
        return 0
    }
    func sum (_ tipTotal: Double, _ total: String) -> Double{
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        if let totalAsDouble = nf.number(from: total)?.doubleValue {
            return totalAsDouble + tipTotal
        }
        return 0
    }
    
    func hideKeyboard() {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    
}

#Preview {
    ContentView()
}
