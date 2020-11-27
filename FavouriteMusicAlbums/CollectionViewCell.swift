//
//  CollectionViewCell.swift
//  FavouriteMusicAlbums
//
//  Created by Lukas Kindt on 25/11/2020.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var lblCountryName: UILabel!
    
    func configure (with countryName: String){
        print(countryName)
        lblCountryName.text = countryName
        backgroundColor = .blue
    }
}
