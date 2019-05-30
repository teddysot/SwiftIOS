//
//  ViewController.swift
//  ClassTable
//
//  Created by Teddy Nasahachart on 2019-05-22.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var classMates = [ClassMate]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classMates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mClass = classMates[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassCell") as! ClassTableViewCell
        
        cell.nameLabel.text = mClass.name
        
        cell.imageLabel.image = mClass.image
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let Noah = ClassMate(name: "Noah", image: UIImage(named: "Noah.png")!)
        
        let Alex = ClassMate(name: "Alex", image: UIImage(named: "Alex.png")!)
        let Angie = ClassMate(name: "Angie", image: UIImage(named: "Angie.png")!)
        let Diego = ClassMate(name: "Diego", image: UIImage(named: "Diego.png")!)
        let Allie = ClassMate(name: "Allie", image: UIImage(named: "Allie.png")!)
        let Kate = ClassMate(name: "Kate", image: UIImage(named: "Kate.png")!)
        let Eser = ClassMate(name: "Eser", image: UIImage(named: "Eser.png")!)
        let Teddy = ClassMate(name: "Teddy", image: UIImage(named: "Teddy.png")!)
        let Miguel = ClassMate(name: "Miguel", image: UIImage(named: "Miguel.png")!)
        
        classMates = [Noah, Alex, Angie, Diego, Allie, Kate, Eser, Teddy, Miguel]
    }

    
}

