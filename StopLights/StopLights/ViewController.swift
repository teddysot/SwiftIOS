//
//  ViewController.swift
//  StopLights
//
//  Created by Teddy Nasahachart on 2019-05-15.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var lights = [StopLight]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lights.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let light = lights[indexPath.row]
        
        //let cell = UITableViewCell()
        
        //cell.textLabel?.text = light.command
        //cell.textLabel?.textColor = light.color
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StopLightCell") as! StopLightTableViewCell
        
        cell.commandLabel.text = light.command
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let redlight = StopLight(command: "Stop", color: UIColor.red)
        let greenlight = StopLight(command: "Go", color: UIColor.green)
        let yellowlight = StopLight(command: "Floor It", color : UIColor.yellow)
        
        lights = [redlight, greenlight, yellowlight]
    }


}

