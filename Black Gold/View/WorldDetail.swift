//
//  WorldDetail.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/1/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import SwiftUI
import MapKit

struct WorldDetail: View {
    
    private var locationManger = LocationManager()
    
    @State private var search: String = ""
    @State private var landmarks = [Landmark]()
    @State private var tapped: Bool = false
    
    private func getNearByLandMarks() {
        
        guard let location = self.locationManger.location else {
            return
        }
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = self.search
        request.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            
            guard let response = response, error == nil else {
                return
            }
            let mapItems = response.mapItems
            self.landmarks = mapItems.map {
                Landmark(placemark: $0.placemark)
            }
        }
    }
    
    func calculateOffset() -> CGFloat {
        
        if self.landmarks.count > 0 && !self.tapped {
            return UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.height / 3
        } else if self.tapped {
            return 100
        } else {
            return UIScreen.main.bounds.size.height
        }
        
    }
    
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            World(landmarks: self.landmarks)
                
                .edgesIgnoringSafeArea(.all)
            TextField("Search", text: self.$search, onEditingChanged: { _ in }) {
                
                self.getNearByLandMarks()
                
            }.textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .offset(y: 20)
            
            PlaceListView(landmarks: self.landmarks) {
                
                self.tapped.toggle()
            }.animation(.spring())
                .offset(y: calculateOffset())
            
        }
    }
}

struct WorldDetail_Previews: PreviewProvider {
    static var previews: some View {
        WorldDetail()
    }
}
