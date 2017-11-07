//
//  DetailStarship.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class DetailStarship : UIViewController{
    
    var starship : StarshipsDP!
    
    @IBOutlet weak var label_model: UILabel!
    @IBOutlet weak var label_manufacturer: UILabel!
    @IBOutlet weak var label_cost_in_credits: UILabel!
    @IBOutlet weak var label_length: UILabel!
    @IBOutlet weak var label_max_atmosphering_speed: UILabel!
    @IBOutlet weak var label_crew: UILabel!
    @IBOutlet weak var label_passengers: UILabel!
    @IBOutlet weak var label_cargo_capacity: UILabel!
    @IBOutlet weak var label_consumables: UILabel!
    @IBOutlet weak var label_hyperdrive_rating: UILabel!
    @IBOutlet weak var label_mglt: UILabel!
    @IBOutlet weak var label_starship_class: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = starship.getName()
        
        setValues()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setValues(){
        
        label_model.text = starship.getModel()
        label_manufacturer.text = starship.getManufacturer()
        label_cost_in_credits.text = starship.getCost_in_credits()
        label_length.text = starship.getLength()
        label_max_atmosphering_speed.text = starship.getMax_atmosphering_speed()
        label_crew.text = starship.getCrew()
        label_passengers.text = starship.getPassenger()
        label_cargo_capacity.text = starship.getCargo_capacity()
        label_consumables.text = starship.getConsumables()
        label_hyperdrive_rating.text = starship.getHyperdrive_rating()
        label_mglt.text = starship.getMGLT()
        label_starship_class.text = starship.getStarship_class()
        
    }
    
}
