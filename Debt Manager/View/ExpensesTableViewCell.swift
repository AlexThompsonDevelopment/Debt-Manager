//
//  ExpensesTableViewCell.swift
//  Debt Manager
//
//  Created by Alexander Thompson on 7/4/21.
//

import UIKit

class ExpensesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var expenseName: UITextField!
    @IBOutlet weak var expenseCost: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
