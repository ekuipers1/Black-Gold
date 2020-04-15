//
//  Coordinator.swift
//  Black Gold
//
//  Created by Erik Kuipers on 4/2/20.
//  Copyright © 2020 Erik Kuipers. All rights reserved.
//

import Foundation
import MapKit

final class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: World
    
    init(_ control: World) {
        self.control = control
    }
    
      func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
             
            if let annotationView = views.first {
                if let annotation = annotationView.annotation {
                    if annotation is MKUserLocation {
                        
                        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                        mapView.setRegion(region, animated: true)
                        
                        annotationView.canShowCallout = true
                        //Your custom image icon
                        annotationView.image = UIImage(named: "locationPin")
                    }
                }
//            annotationView.canShowCallout = true
//            //Your custom image icon
//            annotationView.image = UIImage(named: "locationPin")
//            return annotationView
        
        }
         
//        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")

        }

    }

