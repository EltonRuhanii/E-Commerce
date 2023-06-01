//
//  BrandViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 27.5.23.
//

import UIKit

class BrandViewController: UIViewController {
    // MARK: PROPERTIES
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var devider: UIView!
    let clothingDatasource = Datasource()
    var brand = ""
    var clothingBrand: ProductBrand = .bbc

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
        devider.layer.cornerRadius = 1
        setupBrand()
        setupCollectionView()
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: FUNCTIONS
extension BrandViewController {
    func setupBrand() {
        switch clothingBrand {
        case .pleasures:
            clothingBrand = .pleasures
        case .represent:
            clothingBrand = .represent
        case .kenzo:
            clothingBrand = .kenzo
        case .cdg:
            clothingBrand = .cdg
        case .vetements:
            clothingBrand = .vetements
        case .bbc:
            clothingBrand = .bbc
        case .all:
            clothingBrand = .all
        }
    }
    
    func setupCollectionView() {
        collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
    }
}

// MARK: COLLECTION VIEW
extension BrandViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clothingDatasource.getProducts(brand: clothingBrand).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        let clothingModel = clothingDatasource.getProducts(brand: clothingBrand)[indexPath.item]
        
        brandLabel.text = clothingModel.brandTitleLabel
        cell.productImage.image = UIImage(named: clothingModel.photo)
        cell.productTitle.text = clothingModel.name
        cell.productPrice.text = clothingModel.price
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.width - 40) / 2
        let height = width * 1.5
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let productModel = clothingDatasource.getProducts(brand: clothingBrand)[indexPath.item]
        if let productVC = storyboard?.instantiateViewController(withIdentifier: "ProductViewController") as? ProductViewController {
            productVC.productModel = productModel
            self.navigationController?.pushViewController(productVC, animated: true)
        }
    }
}
