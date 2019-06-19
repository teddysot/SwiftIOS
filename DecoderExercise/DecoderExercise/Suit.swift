//
//  File.swift
//  DecoderExercise
//
//  Created by Teddy Nasahachart on 2019-06-12.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import Foundation

class Deck : Decodable{
    var suits : [Suit]
    
    private enum CodingKeys : String, CodingKey {
        case suits
    }
}

class Suit: Decodable{
    var name : String
    var imageName : String
    var id : Int
    
    private enum CodingKeys : String, CodingKey {
        case name
        case image
        case id
    }
}
