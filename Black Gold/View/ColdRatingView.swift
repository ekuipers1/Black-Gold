//
//  Black Gold
//
//  Created by Erik Kuipers on 3/27/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct ColdRatingView: View {
  // MARK: - PROPERTIES
  
  var cold: ColdDrinks
  
  var body: some View {
    HStack(alignment: .center, spacing: 5) {
      ForEach(1...(cold.rating), id: \.self) { _ in
        Image(systemName: "star.fill")
          .font(.body)
          .foregroundColor(Color.yellow)
      }
    }
  }
}

struct ColdRatingView_Previews: PreviewProvider {
  static var previews: some View {
    ColdRatingView(cold: DataColdDrinks[0])
      .previewLayout(.fixed(width: 320, height: 60))
  }
}
