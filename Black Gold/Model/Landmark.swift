//
//  Landmark.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/3/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import Foundation
import MapKit

struct Landmark {
    
    let placemark: MKPlacemark
    
    var id: UUID {
        return UUID()
    }
    
    var name: String {
        self.placemark.name ?? ""
    }
    
    var title: String {
        self.placemark.title ?? ""
    }
    
    var subtitle: String {
        self.placemark.subtitle ?? ""
    }
    
    var cordinate: CLLocationCoordinate2D {
        self.placemark.coordinate
    }
}
