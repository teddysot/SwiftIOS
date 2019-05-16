//
//  ViewController.swift
//  Stacker
//
//  Created by Teddy Nasahachart on 2019-05-15.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import UIKit

extension UIButton{
    func makeNice(borderWidth: CGFloat, borderColor: UIColor, cornerRadius: CGFloat){
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBAction func redButtonPressed(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        redButton.makeNice(borderWidth: 2.0, borderColor: UIColor.red, cornerRadius: 10.0)
        yellowButton.makeNice(borderWidth: 2.0, borderColor: UIColor.yellow, cornerRadius: 10.0)
        greenButton.makeNice(borderWidth: 2.0, borderColor: UIColor.green, cornerRadius: 10.0)
    }


}

