//
//  Box.swift
//  WeatherApplication
//
//  Created by dsadaoui on 12/08/2020.
//  Copyright © 2020 djabir. All rights reserved.
//

import Foundation
extension Date {
    static func dateString(_ value:Int32?, format: String? = "HH:mm") -> String {
        guard let value = value else {
            return ""
        }
        let date = Date(timeIntervalSince1970: TimeInterval(value))
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: date)
    }
}


