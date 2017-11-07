//
//  DetailCharacter.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class DetailCharacter : UIViewController {
    
    var character : CharactersDP!
    
    @IBOutlet weak var segment_gender: UISegmentedControl!
    @IBOutlet weak var label_height: UILabel!
    @IBOutlet weak var label_mass: UILabel!
    @IBOutlet weak var label_hairColor: UILabel!
    @IBOutlet weak var label_skinColor: UILabel!
    @IBOutlet weak var label_eyeColor: UILabel!
    @IBOutlet weak var label_birthYear: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = character.getName()
        
        setValues()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setValues(){
        let gender = character.getGender()

        if gender == "male"{
            segment_gender.selectedSegmentIndex = 0
        }
        if gender == "female"{
            segment_gender.selectedSegmentIndex = 1
        }

        label_height.text = character.getHeight()
        label_mass.text = character.getMass()
        label_hairColor.text = character.getHairColor()
        label_skinColor.text = character.getSkinColor()
        label_eyeColor.text = character.getEyeColor()
        label_birthYear.text = character.getBirthYear()
        
        
    }
}
