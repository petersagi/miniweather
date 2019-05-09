//
//  ImageUtil.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import UIKit

class ImageUtil {
    
    static let shared = ImageUtil()
    
    private var info: [ConditionInfo]
    
    private init() {
        if let fileUrl = Bundle.main.url(forResource: "Conditions", withExtension: "json"),
            let data = try? Data(contentsOf: fileUrl),
            let conditionInfo = try? JSONDecoder().decode([ConditionInfo].self, from: data) {
            
            info = conditionInfo
        }
        else {
            info = []
        }
    }
    
    func getIcon(to condition: Int) -> UIImage? {
        if let condition = (info.filter { condition == $0.code }).first,
            let image = UIImage(named: String(condition.icon)) {
            
            return image
        }
        else {
            return nil
        }
    }
}
