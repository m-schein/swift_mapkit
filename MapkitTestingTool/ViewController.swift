//
//  ViewController.swift
//  MapkitTestingTool
//
//  Created by Trevisol, Maiara on 10/09/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    var coordinate2D = CLLocationCoordinate2DMake(40.8367321, 14.2468856)
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func changeMapType(_ sender: UIButton) {
        print("hello, the type button is working")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMapRegion(rangeSpan: 100)
        // Do any additional setup after loading the view.
    }
    
    func updateMapRegion(rangeSpan:CLLocationDistance){
        let region = MKCoordinateRegion(center: coordinate2D, latitudinalMeters: 40.8367321, longitudinalMeters: 14.2468856)
        mapView.region = region
    }


}

