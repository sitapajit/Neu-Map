//
//  ViewController.swift
//  Neu Map
//
//  Created by   iMac_26 on 6/23/2559 BE.
//  Copyright © 2559 sitapa. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var myMap: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myLat:CLLocationDegrees = 16.422701
        var myLng:CLLocationDegrees = 102.815245
        
        var lateDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(lateDelta, lngDelta)
        var neuLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLng)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(neuLocation, theSpan)
        
        
        self.myMap.setRegion(theRegion, animated: true)
        
        var neuAnotation = MKPointAnnotation()
        neuAnotation.coordinate = neuLocation
        neuAnotation.title = "มหาวิทยาลัยภาคตะวันออกเฉียงเหนือ"
        neuAnotation.subtitle = "จังหวัด ขอนแก่น"
        
        self.myMap.addAnnotation(neuAnotation)
        
        
    }   // viewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

