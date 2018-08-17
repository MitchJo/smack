//
//  Channel.swift
//  smack
//
//  Created by MacbookPro on 17/08/18.
//  Copyright © 2018 MacbookPro. All rights reserved.
//

import Foundation

struct Channel: Decodable{
    private(set) public var name: String!
    private(set) public var description: String!
    private(set) public var _id: String!
    private(set) public var __v: Int?
}
