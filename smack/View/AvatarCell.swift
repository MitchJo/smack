//
//  CollectionViewCell.swift
//  smack
//
//  Created by MacbookPro on 15/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        self.layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
}
