//
//  CardView.swift
//  Scrumdinger
//
//  Created by Oğulcan Baytimur on 02/10/2023.
//

import SwiftUI

struct cardView: View {
    let docket: docket
    var body: some View {
        VStack(alignment: .leading){
            Text(docket.name)
                .font(.headline)
                .accessibilityAddTraits(/*@START_MENU_TOKEN@*/.isHeader/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

struct cardView_Previews: PreviewProvider {
    static var dockets = docket.sampleData[0]
    static var previews: some View {
        cardView(docket: dockets)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
