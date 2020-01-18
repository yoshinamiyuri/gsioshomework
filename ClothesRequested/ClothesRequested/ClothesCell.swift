//
//  ClothesCell.swift
//  ClothesRequested
//
//  Created by Yuri Yoshinami on 2020/01/11.
//  Copyright © 2020 Yuri Yoshinami. All rights reserved.
//

import UIKit

class ClothesCell: UITableViewCell {

    @IBOutlet weak var clothesImage: UIImageView!
    @IBOutlet weak var clothesLabel: UIView!
    @IBOutlet weak var clothesLevel: UILabel!
    @IBOutlet weak var contactButtonToCustomer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
