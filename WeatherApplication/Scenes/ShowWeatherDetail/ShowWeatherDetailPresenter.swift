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
  func presentSomething(response: ShowWeatherDetail.Something.Response)
}

class ShowWeatherDetailPresenter: ShowWeatherDetailPresentationLogic {
  weak var viewController: ShowWeatherDetailDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: ShowWeatherDetail.Something.Response) {
    let viewModel = ShowWeatherDetail.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
