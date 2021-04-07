//
//  ExpensesViewController.swift
//  Debt Manager
//
//  Created by Alexander Thompson on 7/4/21.
//

import UIKit

class ExpensesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navName: UINavigationItem!
    
    var tableViewRows = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    

    @IBAction func ButtonPressed(_ sender: UIBarButtonItem) {
        tableViewRows += 1
    }
    

}

extension ExpensesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
}
