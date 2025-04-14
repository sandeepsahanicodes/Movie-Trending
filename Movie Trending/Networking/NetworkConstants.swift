//
//  NetworkConstants.swift
//  Movie Trending
//
//  Created by Sandeep Sahani on 11/04/25.
//

import Foundation

class NetworkConstants {
    public static var shared: NetworkConstants = NetworkConstants()
    
    // Make the initializer private, so that other class is not able to instantiate it.
    private init() { }
    
    private func getApiKey() -> String {
        guard let path = Bundle.main.path(forResource: "APIKey", ofType: "plist"),
                  let dict = NSDictionary(contentsOfFile: path),
                  let apiKey = dict["API_Key"] as? String else {
                return "API Key not found!"
            }
            return apiKey
    }
        
    public var apiKey: String {
        get {
            return getApiKey()
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
