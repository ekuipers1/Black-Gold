//
//  CoffeeWorldView.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/10/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI

struct CoffeeWorldView: View {
    
    var factsWorld: [WorldFact] = MapData
    
    var body: some View {
        GeometryReader { gr in
            ScrollView(.vertical, showsIndicators: false) {
                
                Text("Top 10")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                Text("Coffee Countries")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack {
                    ForEach(self.factsWorld) { item in
                        MapViewDetail(factsWorld: item)
                    }
                    .padding(.vertical, 20.0)
                    
                }
                .padding(.leading)
            }
            .padding(.top, 20.0)
            
        }
    }
}

struct CoffeeWorldView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeWorldView(factsWorld: MapData)
            .previewDevice("iPhone 11 Pro")
        //                .previewDevice("iPad Pro")
        
    }
}
