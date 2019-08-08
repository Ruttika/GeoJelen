//
//  ViewController.swift
//  GeoJelen
//
//  Created by Rudolf Dani on 2019. 08. 07..
//  Copyright © 2019. Rudolf Dani. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController , CLLocationManagerDelegate{

    @IBOutlet weak var authLabel: UILabel!
    @IBOutlet weak var authTextIn: UITextField!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var updateBtn: UIButton!
    
    var authCode = 6666;
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startMonitoringSignificantLocationChanges()
        locationAuthStatus()
        
    }
    
    @IBAction func updateBtnPushed(_ sender: Any) {
        
        authLabel.text = String(authCode);
        
    }
    
    func locationAuthStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            currentLocation = locationManager.location
            Location.sharedInstance.latitude = currentLocation.coordinate.latitude
            Location.sharedInstance.longitude = currentLocation.coordinate.longitude
            print(currentLocation.coordinate.latitude, currentLocation.coordinate.longitude)
        }
        else {
            locationManager.requestWhenInUseAuthorization()
            locationAuthStatus()
        }
    }


}

