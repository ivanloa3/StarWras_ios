//
//  DetailSpecie.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class DetailSpecie : UIViewController{
    
    var specie : SpeciesDP!
    
    @IBOutlet weak var label_classification: UILabel!
    @IBOutlet weak var label_designation: UILabel!
    @IBOutlet weak var label_average_height: UILabel!
    @IBOutlet weak var label_skin_colors: UILabel!
    @IBOutlet weak var label_hair_colors: UILabel!
    @IBOutlet weak var label_eye_colors: UILabel!
    @IBOutlet weak var label_average_lifespan: UILabel!
    @IBOutlet weak var label_language: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = specie.getName()
        
        setValues()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setValues(){
        
        label_classification.text = specie.getClassification()
        label_designation.text = specie.getDesignation()
        label_average_height.text = specie.getAverage_height()
        label_skin_colors.text = specie.getSkin_colors()
        label_hair_colors.text = specie.getHair_colors()
        label_eye_colors.text = specie.getEye_colors()
        label_average_lifespan.text = specie.getAverage_lifespan()
        label_language.text = specie.getLanguage()
        
    }
    
}
