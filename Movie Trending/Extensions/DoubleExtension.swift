//
//  DoubleExtension.swift
//  Movie Trending
//
//  Created by Sandeep Sahani on 15/04/25.
//

import Foundation
import UIKit

extension Double {
    static func roundDecimal(number: Double) -> Double {
        return Double(String(format: "%.1f", number)) ?? 0.0
    }
}
