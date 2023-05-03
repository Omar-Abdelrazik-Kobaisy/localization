//
//  ViewController.swift
//  Localization
//
//  Created by Omar on 30/04/2023.
//

import UIKit
import MOLH
class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var confirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        label.text = NSLocalizedString("create_an_account", comment: "")
        
        label.text = "create_an_account".localized
        login.titleLabel?.text = "login".localized
        password.placeholder = "password".localized
        confirmPassword.placeholder = "confirmpassword".localized
    }

    @IBAction func btn(_ sender: Any) {
        MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "ar" ? "en" : "ar")
        MOLH.reset()
    }
    
    
}

