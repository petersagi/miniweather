//
//  BasicForecast.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

// this is the response object of the getForecast request
struct BasicForecast: Decodable {
    var location: Location
    var current: Current
    var forecast: Forecast
}
