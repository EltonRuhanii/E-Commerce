//
//  BrandCell.swift
//  E-Commerce
//
//  Created by WIZZARD on 26.5.23.
//

import UIKit

class BrandCell: UICollectionViewCell {
    @IBOutlet weak var brandView: UIView!
    @IBOutlet weak var brandImage: UIImageView!
    @IBOutlet weak var brandNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupRadius()
    }
    
    func setupRadius() {
        brandView.layer.cornerRadius = brandView.frame.width / 4
        brandImage.layer.cornerRadius = brandImage.frame.width / 4
    }

}
