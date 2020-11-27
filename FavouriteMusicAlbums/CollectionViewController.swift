//
//  CollectionViewController.swift
//  FavouriteMusicAlbums
//
//  Created by Lukas Kindt on 25/11/2020.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    let data:[String] = ["Belgium", "France", "The Netherlands", "Germany", "United Kingdom"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) ->
        Int {
        return data.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell{
            countryCell.configure(with: data[indexPath.row])
            
            cell = countryCell
        }
        
        return cell
    }
}
