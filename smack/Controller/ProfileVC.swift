//
//  ProfileVC.swift
//  smack
//
//  Created by MacbookPro on 16/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    @IBAction func closeModalPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        UserDataService.instance.loggeoutUser()
        NotificationCenter.default.post(name: NOTIFY_USER_DATA_DID_CHANGE, object: nil)
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
        userImg.image = UIImage(named: UserDataService.instance.avatarName)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        userName.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.handleTap))
        view.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_ recognizer: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
    
}
