//
//  ShowWeatherListWorker.swift
//  WeatherApplication
//
//  Created by dsadaoui on 11/08/2020.
//  Copyright (c) 2020 djabir. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import WeatherApi
protocol ShowWeatherListWorkerProtocol {
    var weatherManagerData: WeatherDataManager { get set}
    func fetchCities(completion: @escaping ([City]?)->Void)
}
class ShowWeatherListWorker{
    // MARK: Vars
    var weatherManagerData = WeatherDataManager.shared
    
    // MARK: Works
    func fetchCities(completion: @escaping ([City]?)->Void) {
        self.weatherManagerData.fetchCities { (cities) in
            DispatchQueue.main.async {
                completion(cities)
            }
        }
    }
}
