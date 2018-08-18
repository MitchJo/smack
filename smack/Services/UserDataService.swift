//
//  UserDataService.swift
//  smack
//
//  Created by MacbookPro on 15/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    
    private(set) public var id = ""
    private(set) public var avatarColor = ""
    private(set) public var avatarName = ""
    private(set) public var email = ""
    private(set) public var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String){
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String){
        self.avatarName = avatarName
    }
    
    func returnUIColor(components: String) -> UIColor {
        let scanner = Scanner(string: components)
        let skipped = CharacterSet(charactersIn: "[], ")
        let comma = CharacterSet(charactersIn: ",")
        scanner.charactersToBeSkipped = skipped
        
        var r,g,b,a : NSString?
        
        scanner.scanUpToCharacters(from: comma, into: &r)
        scanner.scanUpToCharacters(from: comma, into: &g)
        scanner.scanUpToCharacters(from: comma, into: &b)
        scanner.scanUpToCharacters(from: comma, into: &a)
        let defaultColor = UIColor.lightGray
        
        guard let rUnWrapped = r else {return defaultColor }
        guard let gUnWrapped = g else {return defaultColor }
        guard let bUnWrapped = b else {return defaultColor }
        guard let aUnWrapped = a else {return defaultColor }
        
        let rFloat = CGFloat(rUnWrapped.doubleValue)
        let gFloat = CGFloat(gUnWrapped.doubleValue)
        let bFloat = CGFloat(bUnWrapped.doubleValue)
        let aFloat = CGFloat(aUnWrapped.doubleValue)
        
        let newUIColor = UIColor(red: rFloat, green: gFloat, blue: bFloat, alpha: aFloat)
        return newUIColor
    
    }
    func loggeoutUser(){
        id = ""
        avatarName = ""
        avatarColor = ""
        email = ""
        name = ""
        
        AuthService.instance.isLoggedIn = false
        AuthService.instance.userEmail = ""
        AuthService.instance.authToken = ""
        
        MessageService.instance.clearChannels();
        MessageService.instance.clearMessages();
    }
}
