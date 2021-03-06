//
//  Movie.swift
//  Kinoticketverkauf
//
//  Created by Meik Dachs on 29.09.17.
//  Copyright © 2017 MDachs. All rights reserved.
//

import Foundation

enum Seating {
    case occupied
    case empty
}

struct Movie {
    let title: String
    let subtitle: String
    let imageName: String
}
