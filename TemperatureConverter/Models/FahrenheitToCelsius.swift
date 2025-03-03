//
//  FahrenheitToCelsius.swift
//  TemperatureConverter
//
//  Created by Nicholas Hwang on 3/3/2025.
//

import Foundation

struct FahrenheitToCelsius: Identifiable {
    
    // MARK: Stored properties
    let id = UUID()
    let temperatureInFahrenheit: Double
    
    // MARK: Computed properties
    var temperatureInCelsius: Double {
        return (temperatureInFahrenheit - 32.0) * 5.0 / 9.0
    }
    
}
