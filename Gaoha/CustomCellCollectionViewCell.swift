//
//  CustomCellCollectionViewCell.swift
//  Gaoha
//
//  Created by 高井佑月 on 2021/12/17.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet var monsterImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        monsterImageView.image = UIImage(named: "1")
    }
}
