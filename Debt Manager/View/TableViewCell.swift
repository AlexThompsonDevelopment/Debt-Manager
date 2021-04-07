//
//  TableViewCell.swift
//  Debt Manager
//
//  Created by Alexander Thompson on 1/4/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
