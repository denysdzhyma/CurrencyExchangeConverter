//
//  DecodingFromJSON.swift
//  Currency Exchange Converter
//
//  Created by Denys on 12/21/24.
//

import Foundation

struct ResponseData: Decodable {
    var date: String
    var base: String
    var rates: CurrencyRates
}

struct CurrencyRates: Decodable {
    var EUR: Double
    var GBP: Double
    var CAD: Double
}

func loadJSONFile(urlString: String) -> ResponseData? {
    guard let url = URL(string: urlString) else {
        print("Invalid URL")
        return nil
    }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let jsonData = try decoder.decode(ResponseData.self, from: data)
        return jsonData
        
    } catch {
        print("Error Msg: \(error)")
        return nil
    }
}


