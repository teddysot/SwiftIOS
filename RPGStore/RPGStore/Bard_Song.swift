//
//  Bard_Song.swift
//  RPGStore
//
//  Created by Teddy Nasahachart on 2019-08-09.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import Foundation

struct Bard_Song : Decodable  {
    let artist : String
    let title : String
    let length_seconds : Int
    let is_wicked_jungle : Bool
    let cost : Int
}
