//
//  CurrencyOptions.swift
//  Currency Exchange Converter
//
//  Created by Denys on 12/21/24.
//

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




