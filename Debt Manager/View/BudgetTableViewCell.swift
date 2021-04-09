//
//  BudgetTableViewCell.swift
//  Debt Manager
//
//  Created by Alexander Thompson on 9/4/21.
//

import UIKit

class BudgetTableViewCell: UITableViewCell {

    
    @IBOutlet weak var budgetImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellValue: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
