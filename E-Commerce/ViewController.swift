//
//  ViewController.swift
//  E-Commerce
//
//  Created by WIZZARD on 26.5.23.
//

import UIKit

class ViewController: UIViewController {
    // MARK: PROPERTIES
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createAccButton: UIButton!
    @IBOutlet weak var createAccButtonHolder: UIView!
    
    // MARK: BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        if let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
            self.navigationController?.pushViewController(loginVC, animated: true)
        }
    }
    
    @IBAction func signupPressed(_ sender: Any) {
        if let signupVC = storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController {
            self.navigationController?.pushViewController(signupVC, animated: true)
        }
    }
}

// MARK: FUNCTIONS
extension ViewController {
    func setupUI() {
        loginButton.layer.cornerRadius = 15
        createAccButton.layer.cornerRadius = 13
        createAccButtonHolder.layer.cornerRadius = 15
    }
    
    
}
