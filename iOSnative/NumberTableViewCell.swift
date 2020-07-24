//
//  NumberTableViewCell.swift
//  SlideInTransition
//
//  Created by Julius Grau on 22.06.20.
//  Copyright © 2020 Gary Tokman. All rights reserved.
//

import UIKit

class NumberTableViewCell: UITableViewCell {
    
    @IBOutlet var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
