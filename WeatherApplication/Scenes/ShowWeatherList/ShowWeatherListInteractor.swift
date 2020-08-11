//
//  ShowWeatherListInteractor.swift
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

protocol ShowWeatherListBusinessLogic {
  func doSomething(request: ShowWeatherList.Something.Request)
}

protocol ShowWeatherListDataStore {
  //var name: String { get set }
}

class ShowWeatherListInteractor: ShowWeatherListBusinessLogic, ShowWeatherListDataStore {
  var presenter: ShowWeatherListPresentationLogic?
  var worker: ShowWeatherListWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: ShowWeatherList.Something.Request) {
    worker?.doSomeWork()
    let response = ShowWeatherList.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
