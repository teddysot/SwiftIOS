//
//  Potion.swift
//  RPGStore
//
//  Created by Teddy Nasahachart on 2019-08-09.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import Foundation

struct Potion : Decodable  {
    let name : String
    let cost : Int
    let isPoisonous : Bool
    let icon : URL
}
