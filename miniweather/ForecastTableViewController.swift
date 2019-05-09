//
//  ForecastTableViewController.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 09..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import UIKit

class ForecastTableViewController: UITableViewController {
    
    var locationUrl: String!
    var preferredTitle: String!
    
    var forecastDays = [ForecastDay]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkController.shared.getForecast(location: locationUrl) { basicForecast in
            guard let basicForecast = basicForecast else { return }
            self.forecastDays = basicForecast.forecast.forecastday
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        title = preferredTitle
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecastDays.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "forecastCell", for: indexPath) as! ForecastTableViewCell
        cell.setup(info: forecastDays[indexPath.row])
        return cell
    }

}
