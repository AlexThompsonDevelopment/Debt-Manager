//
//  ViewController.swift
//  Debt Manager
//
//  Created by Alexander Thompson on 31/3/21.
//

import UIKit

class BudgetViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        registerCell()
        
    }
}

extension BudgetViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    private func registerCell() {
        let cell = UINib(nibName: "TableViewCell", bundle: nil)
        self.tableView.register(cell, forCellReuseIdentifier: "CustomCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? TableViewCell else {
            return UITableViewCell()
        }
        let topics = ["Income", "Expenses", "Savings"]
        cell.topicLabel.text = topics[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ExpenseSegue", sender: self)
    }
    
    
    
    
    
    
}

