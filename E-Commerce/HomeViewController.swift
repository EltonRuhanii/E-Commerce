//
//  HomeViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 26.5.23.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: PROPERTIES
    @IBOutlet weak var locationHolder: UIView!
    @IBOutlet weak var locationPin: UIImageView!
    @IBOutlet weak var shippingAddressLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var brandsCollectionView: UICollectionView!
    @IBOutlet weak var promotionScrollView: UIScrollView!
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    var promotionModel: [PromotionModel] = Datasource().promotionModel
    var brandsModel: [BrandModel] = Datasource().brandModel
    var productsModel: [ProductModel] = Datasource().getPopularBrands()
    
    var addressCity: String = "Change location"
    
    // MARK: BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        shippingAddressLabel.text = addressCity
        setupRadius()
        setupCollectionView()
        setupScrollView()
        self.navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
    }
}

// MARK: FUNCTIONS
extension HomeViewController {
    func setupRadius() {
        locationHolder.layer.cornerRadius = locationHolder.frame.height / 2
        locationPin.layer.cornerRadius = locationPin.frame.height / 2
        changeButton.layer.cornerRadius = changeButton.frame.height / 2
    }
    
    func setupCollectionView() {
        brandsCollectionView.register(UINib(nibName: "BrandCell", bundle: nil), forCellWithReuseIdentifier: "BrandCell")
        productsCollectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
    }
    
    func setupScrollView() {
        for i in 0...promotionModel.count - 1 {
            let adImage = UIImageView()
            
            adImage.frame = CGRect(x: (CGFloat(i) * self.view.frame.width) + 10, y: 0, width: self.view.frame.width - 20, height: promotionScrollView.frame.height)
            
            adImage.image = UIImage(named: promotionModel[i].photo ?? "")
            adImage.contentMode = .scaleAspectFit
            
            promotionScrollView.addSubview(adImage)
        }
        promotionScrollView.contentSize = CGSize(width: self.view.frame.width * CGFloat(promotionModel.count), height: promotionScrollView.frame.width * 0.33)
    }
}

// MARK: COLLECTION & TABLE VIEWS
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == brandsCollectionView {
            return brandsModel.count
        } else {
            return productsModel.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == brandsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BrandCell", for: indexPath) as! BrandCell
            
            let brandModel = brandsModel[indexPath.item]
            
            cell.brandImage.image = UIImage(named: brandModel.brandPhoto ?? "")
            cell.brandNameLabel.text = brandModel.brandName
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
            
            let productModel = productsModel[indexPath.item]
            
            cell.productImage.image = UIImage(named: productModel.photo)
            cell.productTitle.text = productModel.name
            cell.productPrice.text = productModel.price
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == brandsCollectionView {
            let height = brandsCollectionView.frame.height
            return CGSize(width: height, height: height)
        } else {
            let width = (self.view.frame.width - 60) / 2
            let height = width * 1.5
            
            return CGSize(width: width, height: height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == productsCollectionView {
            let productModel = productsModel[indexPath.item]
            if let productVC = storyboard?.instantiateViewController(identifier: "ProductViewController") as? ProductViewController {
                productVC.productModel = productModel
                self.navigationController?.pushViewController(productVC, animated: true)
                }
            } else if collectionView == brandsCollectionView {
                let brandModel = brandsModel[indexPath.item]
                if let brandVC = storyboard?.instantiateViewController(withIdentifier: "BrandViewController") as? BrandViewController {
                    brandVC.clothingBrand = brandModel.brand
                    self.navigationController?.pushViewController(brandVC, animated: true)
            }
        }
    }
    
}
