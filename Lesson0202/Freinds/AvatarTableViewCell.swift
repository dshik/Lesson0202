//
//  AvatarTableViewCell.swift
//  Lesson0202
//
//  Created by Дмитрий Шикунов on 27.08.2020.
//  Copyright © 2020 Дмитрий Шикунов. All rights reserved.
//

import UIKit

class AvatarTableViewCell: UITableViewCell {
    @IBOutlet weak var freindContent: FreindsContentView!
    
    @IBOutlet weak var freindName: UILabel!
    @IBOutlet weak var freinImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
