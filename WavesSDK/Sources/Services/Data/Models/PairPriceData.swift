//
//  PairApi.swift
//  WavesWallet-iOS
//
//  Created by Pavel Gubin on 12/26/18.
//  Copyright © 2018 Waves Platform. All rights reserved.
//

import Foundation

public extension DataService.DTO {
    
    struct PairPrice: Decodable {
        
        private var isNotValid: Bool = false
        
        public let firstPrice: Double
        public let lastPrice: Double
        public let volume: Double
        public let volumeWaves: Double?
        public let quoteVolume: Double?
        
        public static var empty: PairPrice {
            return PairPrice(isNotValid: true,
                             firstPrice: 0,
                             lastPrice: 0,
                             volume: 0,
                             volumeWaves: 0,
                             quoteVolume: 0)
        }
        
        public var isNotValidPair: Bool {
            return isNotValid
        }
    }
    
    struct PairPriceSearch: Decodable {
        
        public let data: PairPrice
        public let amountAsset: String
        public let priceAsset: String
    }
}

