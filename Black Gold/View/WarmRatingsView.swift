//
//  WarmRatingsView.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/7/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct WarmRatingsView: View {
      // MARK: - PROPERTIES
      
      var warm: WarmDrinks
      
      var body: some View {
        HStack(alignment: .center, spacing: 5) {
          ForEach(1...(warm.rating), id: \.self) { _ in
            Image(systemName: "star.fill")
              .font(.body)
              .foregroundColor(Color.yellow)
          }
        }
      }
    }


struct WarmRatingsView_Previews: PreviewProvider {
  static var previews: some View {
    WarmRatingsView(warm: DataWarmDrinks[0])
      .previewLayout(.fixed(width: 320, height: 60))
  }
}

