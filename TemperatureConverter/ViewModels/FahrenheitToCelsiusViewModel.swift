//
//  FahrenheitToCelsiusViewModel.swift
//  TemperatureConverter
//
//  Created by Nicholas Hwang on 3/3/2025.
//

import Foundation

@Observable
class FahrenheitToCelsiusViewModel {
    //MARK: Stored Properties
    var resultHistory: [FahrenheitToCelsius] = []
    var providedTemperatureInFahrenheit: String
    var recoverySuggestion: String = ""
    //MARK: Computed Properties
    var conversionResult: FahrenheitToCelsius? {
        guard let temperatureInFahrenheit = Double(providedTemperatureInFahrenheit), temperatureInFahrenheit > -459.67 else {
            recoverySuggestion = "Please provide a number."
            return nil
        }
        recoverySuggestion = ""
        return FahrenheitToCelsius(temperatureInFahrenheit: temperatureInFahrenheit)
    }
    //MARK: Initializers
    init(
        providedTemperatureInFahrenheit: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedTemperatureInFahrenheit = providedTemperatureInFahrenheit
        self.recoverySuggestion = recoverySuggestion
    }
    func saveResult() {
        if let conversionResult = self.conversionResult{
            self.resultHistory.insert(conversionResult, at: 0)
        }
    }
}
