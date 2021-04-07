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
    
    let expensesViewController = ExpensesViewController()
    
    @IBAction func editingEnded(_ sender: UITextField) {
      //find way to append all values to array 
 
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
}
