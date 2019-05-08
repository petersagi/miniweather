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
    private let apiKey = "9c0b99f6686444c3b0384518190805"
    
    func getLocations(searchString: String, completion: @escaping ([BasicLocation]?) -> Void) {
        guard let url = buildUrl(searchString: searchString) else { completion(nil); return }
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) -> Void in
            guard let data = data else { completion(nil); return }
            guard let basicLocations = try? JSONDecoder().decode([BasicLocation].self, from: data) else { completion(nil); return }
            completion(basicLocations)
        }).resume()
    }
    
    func getForecast(location: String, completion: @escaping (BasicForecast?) -> Void) {
        guard let url = buildUrl(location: location) else { completion(nil); return }
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) -> Void in
            guard let data = data else { completion(nil); return }
            guard let basicForecast = try? JSONDecoder().decode(BasicForecast.self, from: data) else { completion(nil); return }
            completion(basicForecast)
        }).resume()
    }
    
    private func buildUrl(searchString: String) -> URL? {
        let searchQueryUrlString = "\(baseUrlString)?key=\(apiKey)&q=\(searchString)"
        return URL(string: searchQueryUrlString)
    }
    
    private func buildUrl(location: String) -> URL? {
        let locationUrlString = "\(baseUrlString)?key=\(apiKey)&g=\(location)&lang=hu&days=7"
        return URL(string: locationUrlString)
    }
}
