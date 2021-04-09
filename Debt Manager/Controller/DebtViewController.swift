//
//  DebtViewController.swift
//  Debt Manager
//
//  Created by Alexander Thompson on 9/4/21.
//

import UIKit

class DebtViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var tableViewRows = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        registerCell()
    }
    
    private func registerCell() {
           let cell = UINib(nibName: "DebtTableViewCell", bundle: nil)
           self.tableView.register(cell, forCellReuseIdentifier: "DebtCell")
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    tableViewRows += 1
        tableView.reloadData()
    }
}

extension DebtViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DebtCell") as? DebtTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
}
