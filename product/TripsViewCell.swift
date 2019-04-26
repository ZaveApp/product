//
//  TripsViewCell.swift
//  product
//
//  Created by Kevin Chen on 4/24/2019.
//  Copyright © 2019 Yasin Ehsan. All rights reserved.
//

import UIKit

class TripsViewCell: UITableViewCell {
    
    // Elements
    @IBOutlet weak var locationTextField: UILabel!
    @IBOutlet weak var timeTextField: UILabel!
    @IBOutlet weak var priceTextField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
