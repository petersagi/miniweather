//
//  BasicLocation.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

// This is the response object of the getLocations request
struct BasicLocation: Decodable {
    var id: Int
    var name: String
    var region: String
    var country: String
    var lat: Double
    var lon: Double
    var url: String
}
