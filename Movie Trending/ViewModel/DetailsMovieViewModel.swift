//
//  DetailsMovieViewModel.swift
//  Movie Trending
//
//  Created by Sandeep Sahani on 15/04/25.
//

import Foundation

class DetailsMovieViewModel {
    
    var movie: Movie
    
    var movieId: Int
    var movieTitle: String
    var movieImage: URL?
    var movieDescription: String
    
    
    init(movie: Movie) {
        self.movie = movie
        
        self.movieId = movie.id
        self.movieTitle = movie.title
        self.movieDescription = movie.overview
        self.movieImage = makeImageURL(movie.backdropPath)
    }
    
    private func makeImageURL(_ imageCode: String) -> URL? {
        return URL(string: "\(NetworkConstants.shared.imageServerAddress)\(imageCode)")
    }
}
