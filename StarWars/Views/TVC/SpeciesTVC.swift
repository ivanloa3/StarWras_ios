//
//  SpeciesTVC.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class SpeciesTVC : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableSpecies: UITableView!
    
    var species : [SpeciesDP] = []
    var title_episode : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Species of \(title_episode!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return species.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableSpecies.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellSpecie
        
        cell.label_name.text = species[indexPath.row].getName()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailSpecie = self.storyboard?.instantiateViewController(withIdentifier: "DetailSpecie") as! DetailSpecie
        
        detailSpecie.specie = species[indexPath.row]
        
        self.navigationController?.pushViewController(detailSpecie, animated: true)
    }
}

class CellSpecie : UITableViewCell{
    
    @IBOutlet weak var label_name: UILabel!
}
