//
//  MapaViewController.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit
import MapKit

class MapaViewController: UIViewController {

    
    var latituddata: String?
    var longituddata: String?
    var direcciondata : String?
    var codigoPostaldata : String?
    
    
    @IBOutlet weak var MiMapa: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        let latitud = Double(latituddata!)
        let longitud = Double(longituddata!)
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitud!, longitude: longitud!), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        MiMapa.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitud!, longitude: longitud!)
        annotation.title = direcciondata
        annotation.subtitle = codigoPostaldata
        print(codigoPostaldata!)
    
        MiMapa.addAnnotation(annotation)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
   

}
