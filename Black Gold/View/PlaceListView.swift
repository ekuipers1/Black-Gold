//
//  PlaceListView.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/3/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [Landmark]
    var onTap: () -> ()
    
    var body: some View {
        
        
        VStack {
            
            HStack {
                EmptyView()
            }.frame(width: UIScreen.main.bounds.size.width, height: 60)
                .background(Color("ColorTealLight"))
                .gesture(TapGesture()
                    .onEnded(self.onTap)
            )
            List(self.landmarks, id: \.id) { landmark in
                Text(landmark.name)
//                Text(landmark.subtitle)
            }
            
        }.cornerRadius(16)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [Landmark(placemark: MKPlacemark())], onTap: { })
    }
}
