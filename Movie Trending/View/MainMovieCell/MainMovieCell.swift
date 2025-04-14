//
//  MainMovieCell.swift
//  Movie Trending
//
//  Created by Sandeep Sahani on 14/04/25.
//

import UIKit
import Kingfisher

class MainMovieCell: UITableViewCell {

    public static var identifier: String {
        get {
            return "MainMovieCell"
        }
    }
    
    public static func register() -> UINib {
        return UINib(nibName: "MainMovieCell", bundle: nil)
    }
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.addBorder(color: .label, width: 1)
        backView.round()
        backView.layer.cornerRadius = 10
        backView.backgroundColor = .lightGray
        movieImageView.round(5)
        
    }
    
    func setupCell(viewModel: MovieTableCellViewModel) {
        self.nameLabel.text = viewModel.title
        self.dateLabel.text = viewModel.date
        self.rateLabel.text = viewModel.rating
        self.movieImageView.kf.setImage(with: viewModel.imageUrl)
    }
}
