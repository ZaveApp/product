//
//  TripsViewController.swift
//  product
//
//  Created by Kevin Chen on 4/24/2019.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit
import MapKit

class TripsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationsList = ["Main Street", "Queens College", "FHHS", "QCM"]
    let timeList = ["7:30 PM", "6:30 AM", "7:30 PM", "8:00 AM"]
    let priceList = ["$3", "$6", "$20", "$7"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TripsCell") as! TripsViewCell
        
        let loc = locationsList[indexPath.row]
        let time = timeList[indexPath.row]
        let price = priceList[indexPath.row]
        
        cell.locationTextField.text = locationsList[indexPath.row]
        cell.timeTextField.text = timeList[indexPath.row]
        cell.priceTextField.text = priceList[indexPath.row]
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
