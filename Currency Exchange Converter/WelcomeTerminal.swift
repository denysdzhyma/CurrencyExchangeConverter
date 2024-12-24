//
//  WelcomeTerminal.swift
//  Currency Exchange Converter
//
//  Created by Denys on 12/21/24.
//

// Welcome in Terminal window

func printResponseData(date: String, base: String){
    print("******* Currency Exchange Converter *******")
    print("*        Developer by Denys Dzhyma        *")
    print("*******************************************")
    print("*                                         *")
    print("*   Latest Time Updated: \(date)       *")
    print("*   Currency Base: \(base)                    *")
    print("*                                         *")
    print("*******************************************")
}

func printRates(rates: CurrencyRates) {
    print("*                                         *")
    print("*   Currency Exchange Rates:              *")
    print("*                                         *")
    print("*    EUR: \(rates.EUR)                            *")
    print("*    GBP: \(rates.GBP)                            *")
    print("*    CAD: \(rates.CAD)                            *")
    print("*                                         *")
    print("*******************************************")
}

func currencyOptions() {
    print("Which one of the currencies do you want to convert?")
    print("1) USD/EUR")
    print("2) USD/GBP")
    print("3) USD/CAD")
    print("Enter (ex.: 2): ", terminator: "")
}





