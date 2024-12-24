//
//  main.swift
//  Currency Exchange Converter
//
//  Created by Denys on 12/20/24.
//

import Foundation

// Load JSON-file from GitHub
// Decoding JSON file is located in DecodingFromJSON.swift

if let responseData = loadJSONFile(urlString: "https://raw.githubusercontent.com/denysdzhyma/CurrencyExchangeConverter/refs/heads/main/rates.json") {
    let date = responseData.date
    let base = responseData.base
    printResponseData(date: date, base: base)
    printRates(rates: responseData.rates)
} else {
    print("ERROR: Decoding JSON file failed.")
}

func currencyConverter(amount: Double, rates: CurrencyRates, options: Int) {
    switch options {
        case 1:
            let total = amount * rates.EUR
            print("Total in EUR: \(total)")
        case 2:
            let total = amount * rates.GBP
            print("Total in GBP: \(total)")
        case 3:
            let total = amount * rates.CAD
            print("Total in CAD: \(total)")
        default:
            print("ERROR (300): Read the documentation list errors.")
    }
}

currencyOptions()

if let currencyOptionsStr = readLine(), let currencyOptions = Int(currencyOptionsStr) {
    print("How much do you want to convert?: ", terminator: "")
    if let amountInUSDToConvertStr = readLine(), let amount = Double(amountInUSDToConvertStr) {
        if let responseData = loadJSONFile(urlString: "https://raw.githubusercontent.com/denysdzhyma/CurrencyExchangeConverter/main/rates.json") {
            currencyConverter(amount: amount, rates: responseData.rates, options: currencyOptions)
        }
    } else {
        print("ERROR (301): Invalid amount entered.")
        }
    } else {
    print("ERROR (302): Invalid option selected.")
}







