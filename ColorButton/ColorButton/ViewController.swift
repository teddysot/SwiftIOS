//
//  ViewController.swift
//  ColorButton
//
//  Created by Teddy Nasahachart on 2019-05-22.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import UIKit

extension UIButton{
    func makeNice(BGColor: UIColor, borderWidth: CGFloat, borderColor: UIColor, cornerRadius: CGFloat){
        self.layer.backgroundColor = BGColor.cgColor
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
        
        redButton.makeNice(BGColor: UIColor.red,borderWidth: 2.0, borderColor: UIColor.green, cornerRadius: 10.0)
        yellowButton.makeNice(BGColor: UIColor.yellow,borderWidth: 2.0, borderColor: UIColor.red, cornerRadius: 10.0)
        greenButton.makeNice(BGColor: UIColor.green,borderWidth: 2.0, borderColor: UIColor.yellow, cornerRadius: 10.0)
    }


}

