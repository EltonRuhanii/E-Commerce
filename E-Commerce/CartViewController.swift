//
//  CartViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 28.5.23.
//
// EltonR TO DO:
/*
     1. Be able to add products to your cart
     2. Be able to remove products from cart
     3. Be able to proccess 'fake' order
 */

import UIKit

class CartViewController: UIViewController {
    //  PROPERTIES

    // MARK: BODY
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: FUNCTIONS
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
