//
//  Deck.swift
//  CardCounter
//
//  Created by Teddy Nasahachart on 2019-05-29.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import Foundation

struct Card
{
    var type : String
    var point : Int
    var count : Int
}

class Deck
{
    var cardArray = [Card?]()
    init(){
        // add cards to the cardArray in a loop
        for i in 0...12 {
            cardArray.append(Card(type: "clubs", point: i+1, count: 0))
        }
        
        for i in 0...12 {
            cardArray.append(Card(type: "diamonds", point: i+1, count: 0))
        }
        
        for i in 0...12 {
            cardArray.append(Card(type: "hearts", point: i+1, count: 0))
        }
        for i in 0...12 {
            cardArray.append(Card(type: "spades", point: i+1, count: 0))
        }
    }
    
    func ConstructName(forIndexpath idx:IndexPath) -> String{
        var name = "NULL";
        
        let row = idx.row
        var section = idx.section
        
        
        if(row == 0 || row == 13 || row == 26 || row == 39){
            name = "Ace of \(cardArray[row]!.type)"
        }
        
        else if(row == 10 || row == 23 || row == 36 || row == 49){
            name = "Jack of \(cardArray[row]!.type)"
        }
        
        else if(row == 11 || row == 24 || row == 37 || row == 50){
            name = "Queen of \(cardArray[row]!.type)"
        }
        
        else if(row == 12 || row == 25 || row == 38 || row == 51){
            name = "King of \(cardArray[row]!.type)"
        }
        
        else {
            name = "\(cardArray[row]!.point) of \(cardArray[row]!.type)"
        }
        
        if(cardArray[row]!.type == "clubs"){
            section = 0
        }
        
        if(cardArray[row]!.type == "diamonds"){
            section = 1
        }
        
        if(cardArray[row]!.type == "hearts"){
            section = 2
        }
        
        if(cardArray[row]!.type == "spades"){
            section = 3
        }
        
        return name
    }
    
    func ConstructURL(index: Int) -> String{
        var url = "NULL";
        
        if(index == 0 || index == 13 || index == 26 || index == 39){
            url = "ace_of_\(cardArray[index]!.type)"
        }
            
        else if(index == 10 || index == 23 || index == 36 || index == 49){
            url = "jack_of_\(cardArray[index]!.type)"
        }
            
        else if(index == 11 || index == 24 || index == 37 || index == 50){
            url = "queen_of_\(cardArray[index]!.type)"
        }
            
        else if(index == 12 || index == 25 || index == 38 || index == 51){
            url = "king_of_\(cardArray[index]!.type)"
        }
            
        else {
            url = "\(cardArray[index]!.point)_of_\(cardArray[index]!.type).png"
        }
        
        return url
    }
    
 
}
