//
//  Dogs.swift
//  Dogs40
//
//  Created by Delstun McCray on 8/4/21.
//

import Foundation

struct TopLevelObject: Decodable {
    let rates: Rates
}

struct Rates: Decodable {
    let btc: Coin
    let eth: Coin
    let ltc: Coin
    let bch: Coin
    let bnb: Coin
    let eos: Coin
    let xrp: Coin
    let xlm: Coin
    let link: Coin
    let dot: Coin
    let yfi: Coin
    let usd: Coin
    let aed: Coin
    let ars: Coin
    let aud: Coin
    let bdt: Coin
    let bmd: Coin
    let brl: Coin
    let cad: Coin
    let chf: Coin
    let clp: Coin
    let cny: Coin
    let czk: Coin
    let dkk: Coin
    let eur: Coin
    let hkd: Coin
    let huf: Coin
    let idr: Coin
    let ils: Coin
    let inr: Coin
    let jpy: Coin
    let krw: Coin
    let kwd: Coin
    let lkr: Coin
    let mmk: Coin
    let mxn: Coin
    let myr: Coin
    let ngn: Coin
    let nok: Coin
    let nzd: Coin
    let php: Coin
    let pkr: Coin
    let pln: Coin
    let rub: Coin
    let sar: Coin
    let sek: Coin
    let sgd: Coin
    let thb: Coin
    let twd: Coin
    let uah: Coin
    let vef: Coin
    let vnd: Coin
    let zar: Coin
    let xdr: Coin
    let xag: Coin
    let bits: Coin
    let sats: Coin
}

struct Coin: Decodable {
    let name: String
    let unit: String
    let value: Double
    let type: String
}
