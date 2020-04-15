//
//  BeverageDetailView.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/1/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct WarmBeverageDetailView: View {
    // MARK: - PROPERTIES
    
    var warm: WarmDrinks
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Calories: \(warm.calories)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "hand.thumbsup")
                Text("Grams of protein: \(warm.gramsofprotein)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Caffeine: \(warm.caffeine)")
            }
        }
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct WarmBeverageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WarmBeverageDetailView(warm: DataWarmDrinks[0])
            .previewLayout(.fixed(width: 360, height: 60))
    }
}
