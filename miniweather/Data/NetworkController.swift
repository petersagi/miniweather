//
//  NetworkController.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

class NetworkController {
    
    static let shared = NetworkController()
    
    private init() {}
    
    private let baseUrlString = "http://api.apixu.com/v1/current.json"
}
