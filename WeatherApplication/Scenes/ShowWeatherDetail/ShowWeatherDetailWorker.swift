//
//  ShowWeatherDetailWorker.swift
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
protocol ShowWeatherDetailWorkerProtocol {
    var weatherService: WeatherService {get set}
    func getCurrentAndForcastWeather(city: CityEntity, completion: @escaping (Result<OpenWeatherEntity,WeatherError>)->Void)
}
class ShowWeatherDetailWorker: ShowWeatherDetailWorkerProtocol{
    // MARK: Vars
    var weatherService = WeatherService.shared
    
    // MARK: Works
    func getCurrentAndForcastWeather(city: CityEntity, completion: @escaping (Result<OpenWeatherEntity, WeatherError>) -> Void) {
        weatherService.getCurrentAndForcastWeather(city: city) { (result) in
            DispatchQueue.main.async {
                completion(result)
            }
        }
    }
}
