//
//  CustomTableViewCell.swift
//  DemoSimpleAPI
//
//  Created by Đinh Văn Trình on 6/25/19.
//  Copyright © 2019 Wes.vn. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var userIdLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var completedLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
