//
//  DogController.swift
//  Dogs40
//
//  Created by Delstun McCray on 8/4/21.
//

import Foundation
import UIKit

class CoinController {
    
    static func fetchCoin(completion: @escaping (Result<[Coin], CoinError>) -> Void) {
        
        let baseURL = URL(string: "https://api.coingecko.com/api/v3/exchange_rates")
        
        guard let finalURL = baseURL else { return completion(.failure(.invalidURL))}
        print(finalURL)
        
        URLSession.shared.dataTask(with: finalURL) { data, response, error in
            if let error = error {
                return completion(.failure(.thrownError(error)))
                
            }
            
            if let response = response as? HTTPURLResponse {
                if response.statusCode != 200 {
                    print("STATUS CODE: \(response.statusCode)")
                    
                }
                
                guard let data = data else { return completion (.failure(.noData))}
                
                do {
                    let topLevelObject = try JSONDecoder().decode(TopLevelObject.self, from: data)
                    var arrayOfCoins: [Coin] = []
                    
                    arrayOfCoins.append(topLevelObject.rates.btc)
                    arrayOfCoins.append(topLevelObject.rates.bnb)
                    arrayOfCoins.append(topLevelObject.rates.bch)
                    arrayOfCoins.append(topLevelObject.rates.eth)
                    arrayOfCoins.append(topLevelObject.rates.ltc)
                    arrayOfCoins.append(topLevelObject.rates.eos)
                    arrayOfCoins.append(topLevelObject.rates.xrp)
                    arrayOfCoins.append(topLevelObject.rates.xlm)
                    arrayOfCoins.append(topLevelObject.rates.link)
                    arrayOfCoins.append(topLevelObject.rates.dot)
                    arrayOfCoins.append(topLevelObject.rates.yfi)
                    arrayOfCoins.append(topLevelObject.rates.usd)
                    arrayOfCoins.append(topLevelObject.rates.aed)
                    arrayOfCoins.append(topLevelObject.rates.ars)
                    arrayOfCoins.append(topLevelObject.rates.aud)
                    arrayOfCoins.append(topLevelObject.rates.bdt)
                    arrayOfCoins.append(topLevelObject.rates.bmd)
                    arrayOfCoins.append(topLevelObject.rates.brl)
                    arrayOfCoins.append(topLevelObject.rates.cad)
                    arrayOfCoins.append(topLevelObject.rates.chf)
                    arrayOfCoins.append(topLevelObject.rates.clp)
                    arrayOfCoins.append(topLevelObject.rates.cny)
                    arrayOfCoins.append(topLevelObject.rates.czk)
                    arrayOfCoins.append(topLevelObject.rates.dkk)
                    arrayOfCoins.append(topLevelObject.rates.eur)
                    arrayOfCoins.append(topLevelObject.rates.hkd)
                    arrayOfCoins.append(topLevelObject.rates.huf)
                    arrayOfCoins.append(topLevelObject.rates.idr)
                    arrayOfCoins.append(topLevelObject.rates.ils)
                    arrayOfCoins.append(topLevelObject.rates.inr)
                    arrayOfCoins.append(topLevelObject.rates.jpy)
                    arrayOfCoins.append(topLevelObject.rates.krw)
                    arrayOfCoins.append(topLevelObject.rates.kwd)
                    arrayOfCoins.append(topLevelObject.rates.lkr)
                    arrayOfCoins.append(topLevelObject.rates.mmk)
                    arrayOfCoins.append(topLevelObject.rates.mxn)
                    arrayOfCoins.append(topLevelObject.rates.myr)
                    arrayOfCoins.append(topLevelObject.rates.ngn)
                    arrayOfCoins.append(topLevelObject.rates.nok)
                    arrayOfCoins.append(topLevelObject.rates.nzd)
                    arrayOfCoins.append(topLevelObject.rates.php)
                    arrayOfCoins.append(topLevelObject.rates.pkr)
                    arrayOfCoins.append(topLevelObject.rates.pln)
                    arrayOfCoins.append(topLevelObject.rates.rub)
                    arrayOfCoins.append(topLevelObject.rates.sar)
                    arrayOfCoins.append(topLevelObject.rates.sek)
                    arrayOfCoins.append(topLevelObject.rates.sgd)
                    arrayOfCoins.append(topLevelObject.rates.thb)
                    arrayOfCoins.append(topLevelObject.rates.twd)
                    arrayOfCoins.append(topLevelObject.rates.uah)
                    arrayOfCoins.append(topLevelObject.rates.vef)
                    arrayOfCoins.append(topLevelObject.rates.vnd)
                    arrayOfCoins.append(topLevelObject.rates.zar)
                    arrayOfCoins.append(topLevelObject.rates.xdr)
                    arrayOfCoins.append(topLevelObject.rates.xag)
                    arrayOfCoins.append(topLevelObject.rates.bits)
                    arrayOfCoins.append(topLevelObject.rates.sats)
                    
                    completion(.success(arrayOfCoins))
                } catch {
                    print("Error in \(#function) : \(error.localizedDescription) \n---\n \(error)")
                    return completion(.failure(.unableToDecode))
                }
            }
        }.resume()
    }
}
