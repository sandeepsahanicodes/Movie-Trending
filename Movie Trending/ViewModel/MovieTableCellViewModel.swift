//
//  MovieTableCellViewModel.swift
//  Movie Trending
//
//  Created by Sandeep Sahani on 14/04/25.
//

import Foundation

class MovieTableCellViewModel {
    
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageUrl: URL?
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title
        self.rating = "\(Double.roundDecimal(number: movie.voteAverage))/10"
        self.date = movie.releaseDate
        
        self.imageUrl = makeImageURL(movie.posterPath)
    }
    
    private func makeImageURL(_ imageCode: String) -> URL? {
        return URL(string: "\(NetworkConstants.shared.imageServerAddress)\(imageCode)")
    }
}
