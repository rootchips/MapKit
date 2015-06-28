//
//  ViewController.swift
//  MapKit
//
//  Created by Chips on 6/29/15.
//  Copyright (c) 2015 Chips. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 1
        let location = CLLocationCoordinate2D(
            latitude: 4.210484,
            longitude: 101.975766
            
            
        )
        
        
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Hello"
        annotation.subtitle = "Im Here."
        
        mapView.addAnnotation(annotation)
        
        

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

