//
//  MainVC+TableView.swift
//  Movie Trending
//
//  Created by Sandeep Sahani on 11/04/25.
//

import Foundation
import UIKit

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func setUpTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.backgroundColor = .clear
        
        self.resisterCells()
    }
    
    func resisterCells() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func reloadTableView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Warning: textLabel will deprecate!!
        cell.textLabel?.text = self.cellDataSource[indexPath.row].title
        return cell
    }
}
