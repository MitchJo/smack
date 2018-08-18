//
//  MessageCell.swift
//  smack
//
//  Created by MacbookPro on 17/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userName: UILabel!

    @IBOutlet weak var messageBody: UILabel!
    
    @IBOutlet weak var msgTimestamp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func configureCell(message: Message){
        messageBody.text = message.message
        userName.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
    }

}
