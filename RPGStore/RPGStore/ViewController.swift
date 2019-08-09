//
//  ViewController.swift
//  RPGStore
//
//  Created by Teddy Nasahachart on 2019-08-09.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rpgstore : RPGStore? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let url = URL(string: "https://vfs-final-exam.s3.amazonaws.com/RPG_Store.json") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        guard let store = try? JSONDecoder().decode(RPGStore.self, from: data) else {
                            print("Error: Couldn't decode data into Store")
                            return
                        }
                        
                        self.rpgstore = store
                        
                        print("Merchant Name: \(self.rpgstore!.merchant_name)")
                        print("Merchant Address: \(self.rpgstore!.merchant_address)")
                        print("Store Name: \(self.rpgstore!.store_name)")
                        print("Store Image: \(self.rpgstore!.store_image)")
                        
                        print("Weapons:")
                        for weapon in self.rpgstore!.weapons {
                            print("- \(weapon.name)")
                            print("- \(weapon.cost)")
                            print("- \(weapon.damage)")
                            print("- \(weapon.icon)")
                        }
                        
                        print("Potions:")
                        for potion in self.rpgstore!.potions {
                            print("- \(potion.name)")
                            print("- \(potion.cost)")
                            print("- \(potion.isPoisonous)")
                            print("- \(potion.icon)")
                        }
                        
                        print("bard_songs:")
                        for song in self.rpgstore!.bard_songs {
                            print("- \(song.artist)")
                            print("- \(song.title)")
                            print("- \(song.length_seconds)")
                            print("- \(song.is_wicked_jungle)")
                            print("- \(song.cost)")
                        }
                    } catch let error {
                        print(error)
                    }
                }
                }.resume()
        }
    }


}

