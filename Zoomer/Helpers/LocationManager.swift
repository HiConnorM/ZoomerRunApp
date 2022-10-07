//
//  LocationManager.swift
//  Zoomer
//
//  Created by Connor Morgan on 10/6/22.
//

import Foundation
import CoreLocation

final class LocationManager {
    var manager: CLLocationManager
    
    init() {
        manager = CLLocationManager()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.activityType = .fitness
    }
    
    func checkLocationAuthorization() {
        if manager.authorizationStatus != .authorizedWhenInUse{
            manager.requestWhenInUseAuthorization()
        }
    }
}
