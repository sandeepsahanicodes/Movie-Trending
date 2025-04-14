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
    var cellDataSource: [MovieTableCellViewModel] = []
    
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
        self.title = "Trending Movies"
        self.view.backgroundColor = .systemBackground
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
    
    func openDetailsVC(movieId: Int) {
        guard let movie = viewModel.retriveMovie(with: movieId) else {
            return
        }
        let detailsViewModel = DetailsMovieViewModel(movie: movie)
        let detailsMovieVC = DetailsMovieVC(viewModel: detailsViewModel)
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsMovieVC, animated: true)
        }
    }
}
