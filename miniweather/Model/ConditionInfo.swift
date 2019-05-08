//
//  ConditionInfo.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import Foundation

struct ConditionInfo: Decodable {
    var code: Int
    var day: String
    var night: String
    var icon: Int
}
