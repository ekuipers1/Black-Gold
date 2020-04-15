//
//  LandmarkAnnotation.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/3/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import Foundation
import MapKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    
    let title: String?
    let coordinate: CLLocationCoordinate2D
//    let subtitle: String?
    
    init(landmark: Landmark) {
        self.title = landmark.name
        self.coordinate = landmark.cordinate
//        self.subtitle = landmark.subtitle
    }

}
