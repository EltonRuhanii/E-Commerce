//
//  BrandViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 27.5.23.
//

import UIKit

class BrandViewController: UIViewController {
    // MARK: PROPERTIES
    let clothingDatasource = Datasource()
    var brand = ""
    var clothingBrand: ProductBrand = .pleasures

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true

    }


}
