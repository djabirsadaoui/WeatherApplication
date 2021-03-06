//
//  ShowWeatherDetailRouter.swift
//  WeatherApplication
//
//  Created by dsadaoui on 13/08/2020.
//  Copyright (c) 2020 djabir. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol ShowWeatherDetailRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol ShowWeatherDetailDataPassing
{
  var dataStore: ShowWeatherDetailDataStore? { get }
}

class ShowWeatherDetailRouter: NSObject, ShowWeatherDetailRoutingLogic, ShowWeatherDetailDataPassing
{
  weak var viewController: ShowWeatherDetailViewController?
  var dataStore: ShowWeatherDetailDataStore?
}
