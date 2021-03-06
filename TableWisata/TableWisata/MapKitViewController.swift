//
//  MapKitViewController.swift
//  TableWisata
//
//  Created by SMK IDN MI on 10/17/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

// import library map
import MapKit

class MapKitViewController: UIViewController {

    @IBOutlet weak var PetaWisata: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //deklarasi lotitude longitude
        // http://latlong.net
        
        let lokasiWisata = CLLocationCoordinate2D(latitude: -6.087844, longitude: 105.883409)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: lokasiWisata,span: span)
        PetaWisata.setRegion(region,animated: true)
        
        // annotation berfungsi u/ menjadi marker pd maps
        //ketika maps d pencet akan keluar title dan subtitle
        let annotation = MKPointAnnotation()
        annotation.coordinate = lokasiWisata
        annotation.title = "Apple"
        annotation.subtitle = "Jakarta"
        PetaWisata.addAnnotation(annotation)

        
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
