//
//  ViewController.swift
//  miniweather
//
//  Created by Péter Sági on 2019. 05. 08..
//  Copyright © 2019. Péter Sági. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var locations = [BasicLocation]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showForecast" {
            if let destination = segue.destination as? ForecastTableViewController,
                let selectedRow = tableView.indexPathForSelectedRow?.row {
                destination.locationUrl = locations[selectedRow].url
                destination.preferredTitle = locations[selectedRow].name
            }
        }
        else {
            print("Unknown segue: \(segue)")
        }
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchString = searchBar.text, !searchString.isEmpty else { return }
        NetworkController.shared.getLocations(searchString: searchString) { locations in
            guard let locations = locations else { return }
            self.locations = locations
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        searchBar.resignFirstResponder()
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchResultCell", for: indexPath) as! SearchResultTableViewCell
        cell.setup(cityName: locations[indexPath.row].name)
        return cell
    }
}
