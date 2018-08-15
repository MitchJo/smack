//
//  LoginVC.swift
//  smack
//
//  Created by MacbookPro on 15/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
