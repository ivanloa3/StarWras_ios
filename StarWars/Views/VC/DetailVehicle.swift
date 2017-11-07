//
//  DetailVehicle.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class DetailVehicle : UIViewController {
    
    var vehicle : VehiclesDP!
    
    @IBOutlet weak var label_model: UILabel!
    @IBOutlet weak var label_manufacturer: UILabel!
    @IBOutlet weak var label_cost_in_credits: UILabel!
    @IBOutlet weak var label_length: UILabel!
    @IBOutlet weak var label_max_atmosphering_speed: UILabel!
    @IBOutlet weak var label_crew: UILabel!
    @IBOutlet weak var label_passengers: UILabel!
    @IBOutlet weak var label_cargo_capacity: UILabel!
    @IBOutlet weak var label_consumables: UILabel!
    @IBOutlet weak var label_vehicle_class: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = vehicle.getName()
        
        setValues()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setValues(){
        
        label_model.text = vehicle.getModel()
        label_manufacturer.text = vehicle.getManufacturer()
        label_cost_in_credits.text = vehicle.getCost_in_credits()
        label_length.text = vehicle.getLength()
        label_max_atmosphering_speed.text = vehicle.getMax_atmosphering_speed()
        label_crew.text = vehicle.getCrew()
        label_passengers.text = vehicle.getPassenger()
        label_cargo_capacity.text = vehicle.getCargo_capacity()
        label_consumables.text = vehicle.getConsumables()
        label_vehicle_class.text = vehicle.getVehicle_class()
        
    }
    
}
