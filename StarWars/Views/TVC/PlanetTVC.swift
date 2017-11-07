//
//  PlanetTVC.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/29/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class PlanetTVC : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var planets : [PlanetsDP] = []
    var title_episode : String!
    
    @IBOutlet weak var tablePlanets: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Planets of \(title_episode!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tablePlanets.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellPlanet
        
        cell.label_name.text = planets[indexPath.row].getName()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let planet = self.storyboard?.instantiateViewController(withIdentifier: "DetailPlanet") as! DetailPlanet
        
        planet.planet = planets[indexPath.row]
        
        self.navigationController?.pushViewController(planet, animated: true)
    }

}

class CellPlanet : UITableViewCell{
    
    @IBOutlet weak var label_name: UILabel!
}
