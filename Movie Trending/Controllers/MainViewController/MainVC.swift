//
//  MainVC.swift
//  Movie Trending
//
//  Created by Sandeep Sahani on 11/04/25.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activatingIndicator: UIActivityIndicatorView!
    
    var viewModel: MainViewModel = MainViewModel()
    var cellDataSource: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    func configView() {
        self.title = "Main VC"
        self.view.backgroundColor = .red
        
        setUpTableView()
    }
    
    func bindViewModel() {
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading {
                    self.activatingIndicator.startAnimating()
                } else {
                    self.activatingIndicator.stopAnimating()
                }
            }
        }
        
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self, let movies = movies else {
                return
            }
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
}
