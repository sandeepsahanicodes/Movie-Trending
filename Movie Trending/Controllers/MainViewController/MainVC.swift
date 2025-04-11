//
//  MainVC.swift
//  Movie Trending
//
//  Created by Sandeep Sahani on 11/04/25.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    func configView() {
        self.title = "Main VC"
        self.view.backgroundColor = .red
        
        setUpTableView()
    }
}
