//
//  ProductCell.swift
//  E-Commerce
//
//  Created by WIZZARD on 26.5.23.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var viewHolder: UIView!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var buyNowButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupRadius() {
        viewHolder.layer.cornerRadius = 25
        productImage.layer.cornerRadius = 23
        buyNowButton.layer.cornerRadius = 15
    }
}
