//
//  Astro.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

struct Astro: Decodable {
    var sunrise: String
    var sunset: String
    var moonrise: String
    var moonset: String
}
