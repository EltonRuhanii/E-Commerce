//
//  ProductViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 27.5.23.
//

import UIKit

class ProductViewController: UIViewController {
    // MARK: PROPERTIES
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productBrand: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var addToCartButtonHlder: UIView!
    @IBOutlet weak var favoriteImage: UIImageView!
    @IBOutlet weak var productPriceholder: UIView!
    
    var productModel: ProductModel?
    var favorite: Bool = false
    
    // MARK: BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
        setupProductDetails()
        setupCornerRadius()
        setupCell()
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func favoritePressed(_ sender: Any) {
        if favorite == false {
            favoriteImage.image = UIImage(named: "Favorite - Selected")
            favorite = true
        } else if favorite == true {
            favoriteImage.image = UIImage(named: "Favorite")
            favorite = false
        }
    }
}

// MARK: FUNCTIONS
extension ProductViewController {
    func setupProductDetails() {
        productImage.image = UIImage(named: productModel?.photo ?? "")
        productBrand.text = productModel?.brandTitleLabel
        productName.text = productModel?.name
        productName.text = productModel?.productLabel
        productDescription.text = productModel?.description
        productPrice.text = productModel?.price
    }
    
    func setupCornerRadius(){
        productPriceholder.layer.cornerRadius = productPriceholder.frame.height / 2
        addToCartButtonHlder.layer.cornerRadius = productPriceholder.layer.cornerRadius - 3
    }
    
    func setupCell() {
        collectionView.register(UINib(nibName: "SizeCell", bundle: nil), forCellWithReuseIdentifier: "SizeCell")
    }
}

// MARK: COLLECTION VIEW
extension ProductViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SizeCell", for: indexPath) as! SizeCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productModel?.size.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 45, height: 45)
    }
}
