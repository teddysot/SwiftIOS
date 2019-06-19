//
//  ViewController.swift
//  DecoderExercise
//
//  Created by Teddy Nasahachart on 2019-06-12.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bundle = Bundle.main
        
        if let filePath = bundle.path(forResource: "suits", ofType: "json"){
            let fileUrl = URL(fileURLWithPath: filePath)
            let data = try? Data(contentsOf: fileUrl, options: .mappedIfSafe)
            
            let deck = try? JSONDecoder().decode(Deck.self, from: data!)
            
            print("The number of suits in my deck is \(deck?.suits.count ?? -1)")
            
            if let S = deck?.suits.first {
                print("The name of the first suit is \(S.name)")
            }
        }
    }


}

