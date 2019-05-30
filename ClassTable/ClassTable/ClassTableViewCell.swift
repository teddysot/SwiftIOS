//
//  ClassTableViewCell.swift
//  ClassTable
//
//  Created by Teddy Nasahachart on 2019-05-22.
//  Copyright © 2019 Teddy Nasahachart. All rights reserved.
//

import UIKit

class ClassTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var imageLabel : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
