//
//  IndexMoviesTVC.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class IndexMoviesTVC : UITableViewController {
    
    
    var films : [FilmsDP] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = UIColor.black
        
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white ]
        
        let controller = ControllerAD()
        controller.indexMovies = self
        controller.getData()

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return films.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellFilmsTitle
        
        let myFilm = films[indexPath.row]
        
        cell.label_titleFilm.text = myFilm.getTitle()
        cell.label_episodioFilm.text = "Episodio \(myFilm.getEpisodeId())"
        cell.image_icon.image = UIImage(named: "darkIcon.ico")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let  detailFilmVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailFilmVC") as! DetailFilmVC
        
        detailFilmVC.film = films[indexPath.row]
        detailFilmVC.time = 0
        
        self.navigationController?.pushViewController(detailFilmVC, animated: true)
    }
    
}

class CellFilmsTitle : UITableViewCell{
    
    @IBOutlet weak var label_titleFilm: UILabel!
    @IBOutlet weak var label_episodioFilm: UILabel!
    
    @IBOutlet weak var image_icon: UIImageView!
    
    
}





