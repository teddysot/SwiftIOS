//
//  ViewController.swift
//  CardCounter
//
//  Created by Teddy Nasahachart on 2019-05-29.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let deck = Deck()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var sectionName = "NULL"
        if(section == 0){
            sectionName = "Clubs"
        }
    
        if(section == 1){
            sectionName = "Diamonds"
        }
    
        if(section == 2){
            sectionName = "Hearts"
        }
    
        if(section == 3){
            sectionName = "Spades"
        }
    
        return sectionName
    }
    
    var countingDictionary : [String : Int] = [String : Int]()
    
    // put stuff in
    //  countingDictionary["queen"] = 7
    //   kinda like array[6] = "something" in a string array
    // let x = countingDictionary["Queen"] / /this equals seven
    // let XXX = countingDictionary["jfhskhdfskhdkhf"]  // that is nil
    
    func Construct() {
        for i in 0...51{
            let cardurl = deck.ConstructURL(index: i)
            countingDictionary[cardurl] = 0
        }
    }
    
    func GetCounter(forIndexpath idx:IndexPath) -> Int {
         // get the card name
        let cardname = deck.ConstructURL(index: idx.row)
        
        if let cardcount = countingDictionary[cardname] {
             countingDictionary[cardname] = cardcount + 1
        }else{
            countingDictionary[cardname] = 1
        }

        return countingDictionary[cardname]!
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        if(indexPath.section == 4){
            cell.imageView?.image = nil
            cell.textLabel?.text = "RESET"
        }
        else{
            let cardname = deck.ConstructName(forIndexpath: indexPath)
            let cardurl = deck.ConstructURL(index: indexPath.row + indexPath.section * 13)
            let count = GetCounter(forIndexpath: indexPath)
            
            cell.textLabel?.text = "\(cardname)                         \(count)"
            cell.imageView?.image = UIImage(named: cardurl)
        }
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Construct()
    }


}

