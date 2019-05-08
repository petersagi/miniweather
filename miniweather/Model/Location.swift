//
//  Location.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

struct Location: Decodable {
    var name: String
    var region: String
    var country: String
    var lat: Double
    var lon: Double
    var tz_id: String
    var localtime_epoch: Int
    var localtime: String
}
