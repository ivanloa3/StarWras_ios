//
//  NaveCVC.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/29/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class NaveCVC : UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var collectionVehicle: UICollectionView!
    
    var vehicles : [VehiclesDP] = []
    var title_episode : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Vehicles of \(title_episode!)"
        
        self.collectionVehicle.delegate = self
        self.collectionVehicle.dataSource = self
        
        let itemSize =  UIScreen.main.bounds.width/3 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        collectionVehicle.collectionViewLayout = layout
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vehicles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionVehicle.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellNave
        
        cell.label_vehicleName.text = vehicles[indexPath.row].getName()
        
        return cell
    }
    
}

class CellNave : UICollectionViewCell{
    
    @IBOutlet weak var label_vehicleName: UILabel!
}
