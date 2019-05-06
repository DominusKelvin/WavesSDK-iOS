//
//  MatcherServiceTypes.swift
//  WavesWallet-iOS
//
//  Created by mefilt on 20.07.2018.
//  Copyright © 2018 Waves Platform. All rights reserved.
//

import Foundation
import Moya

public enum Matcher {}

public extension Matcher {
    enum DTO {}
    enum Query {}
    internal enum Service {}
}

protocol MatcherTargetType: TargetType {
    var matcherUrl: URL { get }
}

extension MatcherTargetType {
    
    var baseURL: URL { return matcherUrl }
    
    var sampleData: Data {
        return Data()
    }
    
    var headers: [String: String]? {
        return ContentType.applicationJson.headers
    }
}
