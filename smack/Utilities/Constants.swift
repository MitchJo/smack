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

let BASE_URL = "https://chattychatmit.herokuapp.com/v1/"
let URL_ACCOUNT = "\(BASE_URL)"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"


//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//UserDefaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers

let HEADERS = [
    "Content-Type": "application/json; charset=utf-8"
]
