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
    @IBOutlet weak var totalExpenses: UILabel!
    
    var expensesValue: [Double]?
    var tableViewRows = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    registerCell()
        tableView.delegate = self
        tableView.dataSource = self
            }

    @IBAction func buttonPressed(_ sender: UIButton) {
        tableViewRows += 1
        tableView.reloadData()
        
    }
    
    private func registerCell() {
        let cell = UINib(nibName: "ExpensesTableViewCell", bundle: nil)
        self.tableView.register(cell, forCellReuseIdentifier: "ExpenseCell")
    }
    
}

extension ExpensesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewRows
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExpenseCell") as? ExpensesTableViewCell else {
            return UITableViewCell()
        }
        return cell
        }
    
        
    }
    
    
    

