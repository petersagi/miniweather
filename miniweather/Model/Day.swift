//
//  Day.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

struct Day: Decodable {
    var maxtemp_c: Double
    var maxtemp_f: Double
    var mintemp_c: Double
    var mintemp_f: Double
    var avgtemp_c: Double
    var avgtemp_f: Double
    var maxwind_mph: Double
    var maxwind_kph: Double
    var totalprecip_mm: Double
    var totalprecip_in: Double
    var avgvis_km: Double
    var avgvis_miles: Double
    var avghumidity: Int
    var condition: Condition
    var uv: Double
}
