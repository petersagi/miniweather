//
//  ForecastDay.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

struct ForecastDay: Decodable {
    var date: String
    var date_epoch: Int
    var day: Day
    var astro: Astro
}
