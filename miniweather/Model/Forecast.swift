//
//  Forecast.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

struct Forecast: Decodable {
    var forecastday: [ForecastDay]
}
