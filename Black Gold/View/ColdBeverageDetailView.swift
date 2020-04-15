//
//  ColdBeverageDetailView.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/7/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct ColdBeverageDetailView: View {
    // MARK: - PROPERTIES
    
    var cold: ColdDrinks
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Calories: \(cold.calories)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "hand.thumbsup")
                Text("Grams of protein: \(cold.gramsofprotein)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Caffeine: \(cold.caffeine)")
            }
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct ColdBeverageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColdBeverageDetailView(cold: DataColdDrinks[0])
            .previewLayout(.fixed(width: 360, height: 60))
    }
}


