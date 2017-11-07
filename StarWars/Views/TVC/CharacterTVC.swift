//
//  CharacterTVC.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/29/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class CharacterTVC : UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var characterTable: UITableView!
    var characters : [CharactersDP] = []
    
    var title_episode : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Characters of \(title_episode!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellCharacter
        
        cell.characterName.text = characters[indexPath.row].getName()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailCharacter = self.storyboard?.instantiateViewController(withIdentifier: "DetailCharacter") as! DetailCharacter
        
        detailCharacter.character = characters[indexPath.row]
        
        self.navigationController?.pushViewController(detailCharacter, animated: true)
        
    }
    
}


class CellCharacter : UITableViewCell{
    
    @IBOutlet weak var characterName: UILabel!
    
}
