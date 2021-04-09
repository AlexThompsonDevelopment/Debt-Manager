//
//  ExpensesTableViewCell.swift
//  Debt Manager
//
//  Created by Alexander Thompson on 8/4/21.
//

import UIKit

class ExpensesTableViewCell: UITableViewCell {

    let expensesViewController = ExpensesViewController()
    
    
    
    @IBOutlet weak var expenseCost: UITextField!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    

    }

    //move this to model
    func convertText(text: String) -> Double {
  let string = NSString(string: text)
        let double = string.doubleValue
        return double
  
  }
    //create userdefault function to save all this info
    @IBAction func editingEnded(_ sender: UITextField) {
       let doubleValue = convertText(text: sender.text ?? "")
        sender.text = String(format: "$%.2f", doubleValue)
      ExpensesViewController.expenseArray[expenseCost.tag] = doubleValue
      
        NotificationCenter.default.post(name: Notification.Name(rawValue: "updateExpenseLabel"), object: nil)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }

}
