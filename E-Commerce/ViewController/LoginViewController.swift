//
//  LoginViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 26.5.23.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {
    @IBOutlet private weak var buttonHolder: UIView!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var username: UITextField!
    @IBOutlet private weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonHolder.layer.cornerRadius = 15
        loginButton.layer.cornerRadius = 13
        self.navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
    }

    @IBAction func loginPressed(_ sender: Any) {
        loggedIn()
    }
    
    private func loggedIn() {
        if let username = self.username.text, username.isEmpty {
            return
        } else if let password = self.password.text, password.isEmpty{
            let alert = UIAlertController(title: "Check password", message: "Password is either wrong or empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { _ in
            }))
            present(alert, animated: true)
        }
        
        if let homeVC = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
            self.navigationController?.pushViewController(homeVC, animated: false)
        }
    }
}
