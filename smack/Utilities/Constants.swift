//
//  Constants.swift
//  smack
//
//  Created by MacbookPro on 15/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// Url constants

let BASE_URL = "https://chattychatmit.herokuapp.com/"
let URL_REGISTER = "\(BASE_URL)/v1/account/register"
let URL_ACCOUNT = "\(BASE_URL)"
let URL_LOGIN = "\(BASE_URL)"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//UserDefaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

