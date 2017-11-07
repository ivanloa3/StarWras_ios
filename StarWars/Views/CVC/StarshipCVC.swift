//
//  StarshipCVC.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class StarshipCVC : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var collectionStarship: UICollectionView!
    
    var starships : [StarshipsDP] = []
    var title_episode : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Starships of \(title_episode!)"
        
        self.collectionStarship.delegate = self
        self.collectionStarship.dataSource = self
        
        let itemSize =  UIScreen.main.bounds.width/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        collectionStarship.collectionViewLayout = layout
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return starships.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionStarship.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! StarshipCell
        
        cell.label_name.text = starships[indexPath.row].getName()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detailStarship = self.storyboard?.instantiateViewController(withIdentifier: "DetailStarship") as! DetailStarship
        
        detailStarship.starship = starships[indexPath.row]
        
        self.navigationController?.pushViewController(detailStarship, animated: true)
    }
}

class StarshipCell : UICollectionViewCell{
    @IBOutlet weak var label_name: UILabel!
}
