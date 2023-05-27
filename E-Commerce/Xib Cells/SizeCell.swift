//
//  SizeCell.swift
//  E-Commerce
//
//  Created by WIZZARD on 27.5.23.
//

import UIKit

class SizeCell: UICollectionViewCell {
    @IBOutlet weak var viewHolder: UIView!
    @IBOutlet weak var sizeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewHolder.layer.cornerRadius = 10
    }

}
