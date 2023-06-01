//
//  SignupViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 26.5.23.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var buttonHolder: UIView!
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
        buttonHolder.layer.cornerRadius = 15
        signupButton.layer.cornerRadius = 13
    }

    @IBAction func signupPressed(_ sender: Any) {
        signedUp()
    }
    
    func signedUp() {
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
