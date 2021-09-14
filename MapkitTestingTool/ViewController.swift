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
    
    @IBOutlet weak var changePitch: UIButton!
    @IBAction func changeMapType(_ sender: UIButton) {
        switch mapView.mapType{
            case .standard:
                mapView.mapType = .satellite
            case .satellite:
                mapView.mapType = .hybrid
            case .hybrid:
                mapView.mapType = .satelliteFlyover
            case .satelliteFlyover:
                mapView.mapType = .hybridFlyover
            case .hybridFlyover:
                mapView.mapType = .standard
            case .mutedStandard:
                mapView.mapType = .mutedStandard
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMapRegion(rangeSpan: 5000)
        // Do any additional setup after loading the view.
    }
    
    func updateMapRegion(rangeSpan:CLLocationDistance){
        let region = MKCoordinateRegion(center: coordinate2D, latitudinalMeters: 40.8367321, longitudinalMeters: 14.2468856)
        mapView.region = region
    }

    @IBAction func toggleMapFeatures(_ sender: Any) {
        
    }
    
}

