//
//  ForecastTableViewCell.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var sunriseLabel: UILabel!
    @IBOutlet weak var sunsetLabel: UILabel!
    @IBOutlet weak var dayTempLabel: UILabel!
    @IBOutlet weak var nightTempLabel: UILabel!
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var conditionLabel: UILabel!
    
    func setup(info: ForecastDay) {
        dateLabel.text = info.date
        sunriseLabel.text = info.astro.sunrise
        sunsetLabel.text = info.astro.sunset
        dayTempLabel.text = String(info.day.maxtemp_c)
        nightTempLabel.text = String(info.day.mintemp_c)
        conditionImageView.image = ImageUtil.getIcon(to: info.day.condition.code)
        conditionLabel.text = info.day.condition.text
    }
    
}
