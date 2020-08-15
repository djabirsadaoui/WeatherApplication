//
//  ShowWeatherDetailPresenter.swift
//  WeatherApplication
//
//  Created by dsadaoui on 11/08/2020.
//  Copyright (c) 2020 djabir. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation

protocol ShowWeatherDetailPresentationLogic {
    func presentWeatherDetailSuccess(response: WeatherDetail.Success.Response)
    func presentWeatherDetailFailure(response: WeatherDetail.Failure.Response)
}

class ShowWeatherDetailPresenter: ShowWeatherDetailPresentationLogic {
    weak var viewController: ShowWeatherDetailDisplayLogic?
    
    // MARK: Present something
    func presentWeatherDetailSuccess(response: WeatherDetail.Success.Response) {
        let currentWeather = response.weatherData.current
        let hours = response.weatherData.hourlyArray.map { (current) -> WeatherHour in
            return WeatherHour(icon: current.weatherArray.first?.icon, hour: "\(Date.dateString(current.dt, format: "HH"))h", temp: "\(roundString(current.temp))°")
        }
        let viewModel = WeatherDetail.Success.ViewModel(icon: currentWeather.weatherArray.first?.icon, description: currentWeather.weatherArray.first?.weatherDescription , temp: "\(roundString(currentWeather.temp))°", sunrise: Date.dateString(currentWeather.sunrise), sunset: Date.dateString(currentWeather.sunset), feelslike: "\(roundString(currentWeather.feelsLike))°", pressure: "\(currentWeather.pressure) hPa", humidity: "\(currentWeather.humidity)%", visibility: String(currentWeather.visibility), winspeed: String(currentWeather.windSpeed),hours: hours)
        self.viewController?.displayWeatherDetailSuccess(viewModel: viewModel)
    }
    func presentWeatherDetailFailure(response: WeatherDetail.Failure.Response) {
        let viewModel = WeatherDetail.Failure.ViewModel(error: response.error.localizedDescription)
        self.viewController?.displayWeatherDetailFailure(viewModel: viewModel)
    }
    func roundString(_ value: Double) -> String {
        return String(format: "%.0f", round(value))
    }
}
