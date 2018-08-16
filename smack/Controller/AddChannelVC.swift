//
//  AddChannelVC.swift
//  smack
//
//  Created by MacbookPro on 17/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!

    @IBOutlet weak var descriptionTxt: UITextField!
    
    @IBOutlet weak var bgView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    
    @IBAction func onClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor: SMACK_PURPLE_PLACEHOLDER_COLOR])
        descriptionTxt.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor: SMACK_PURPLE_PLACEHOLDER_COLOR])
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
}
