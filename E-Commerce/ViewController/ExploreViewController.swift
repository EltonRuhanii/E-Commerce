//
//  FavoritesViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 28.5.23.
//

import UIKit

class ExploreViewController: UIViewController {
    // MARK: PROPERTIES
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var devider: UIView!
    let clothingDatasource = Datasource().allProducts
    
    //MARK: BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
        devider.layer.cornerRadius = 1
        setupCollectionView()
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: FUNCTIONS
extension ExploreViewController {
    func setupCollectionView() {
        collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
    }
}

// MARK: COLLECTION VIEW
extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clothingDatasource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        let clothingModel = clothingDatasource[indexPath.item]
        
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
        let productModel = clothingDatasource[indexPath.item]
        if let productVC = storyboard?.instantiateViewController(withIdentifier: "ProductViewController") as? ProductViewController {
            productVC.productModel = productModel
            self.navigationController?.pushViewController(productVC, animated: true)
        }
    }
}
