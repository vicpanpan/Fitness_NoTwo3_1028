//
//  FitnessItemTableViewCell.swift
//  Fitness_NoTwo
//
//  Created by vicpan on 2022/10/21.
//

import UIKit

class FitnessItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var itemPicture: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
