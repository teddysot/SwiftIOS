//
//  Item.swift
//  RPGStore
//
//  Created by Teddy Nasahachart on 2019-08-09.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import Foundation

struct Weapon : Decodable  {
    let name : String
    let cost : Int
    let damage : Int
    let icon : URL
}
