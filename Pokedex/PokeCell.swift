//
//  PokeCell.swift
//  Pokedex
//
//  Created by Mehdi Chennoufi on 01/05/2016.
//  Copyright © 2016 Mehdi Chennoufi. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl:UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalizedString // => met le nom en lettre capitale
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
}
