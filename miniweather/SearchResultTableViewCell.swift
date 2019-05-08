//
//  SearchResultTableViewCell.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import UIKit

class SearchResultTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    
    func setup(cityName: String) {
        cityNameLabel.text = cityName
    }
}
