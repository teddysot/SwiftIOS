//
//  RPGStore.swift
//  RPGStore
//
//  Created by Teddy Nasahachart on 2019-08-09.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import Foundation

struct RPGStore : Decodable {
    let merchant_name : String
    let merchant_address : String
    let store_name : String
    let store_image : URL
    let weapons : [Weapon]
    let potions : [Potion]
    let bard_songs : [Bard_Song]
    
    enum CodingKeys : String, CodingKey {
        case merchant_name
        case merchant_address
        case store_name
        case store_image = "store_image"
        case weapons = "weapons"
        case potions = "potions"
        case bard_songs = "bard_songs"
    }
    
}
