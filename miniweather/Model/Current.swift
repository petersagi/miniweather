//
//  Current.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

struct Current: Decodable {
    var last_updated_epoch: Int
    var last_updated: String
    var temp_c: Double
    var temp_f: Double
    var is_day: Int
    var condition: Condition
    var wind_mph: Double
    var wind_kph: Double
    var wind_degree: Int
    var wind_dir: String
    var pressure_mb: Double
    var pressure_in: Double
    var precip_mm: Double
    var precip_in: Double
    var humidity: Int
    var cloud: Int
    var feelslike_c: Double
    var feelslike_f: Double
    var vis_km: Int
    var vis_miles: Int
    var uv: Double
    var gust_mph: Double
    var gust_kph: Double
}
