//
//  Location.swift
//  GeoJelen
//
//  Created by Rudolf Dani on 2019. 08. 08..
//  Copyright © 2019. Rudolf Dani. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}

