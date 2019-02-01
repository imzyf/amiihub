//
//  AmiiboAPI.swift
//  amiihub
//
//  Created by  moma on 2019/2/1.
//  Copyright © 2019 imzyf. All rights reserved.
//

import Foundation
import Moya

protocol ProductAPIType {
    var addXAuth: Bool { get }
}

enum AmiiboAPI {
    /// It returns information of all amiibos or specific amiibo as a list.
    case amiibo(name: String?, id: String?)

}
extension AmiiboAPI {
    var parameters: [String: Any]? {
        var params: [String: Any] = [:]
        switch self {
        case .amiibo(let name, let id):
            params["name"] = name
            params["id"] = id
        }

        return params
    }

    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
}
extension AmiiboAPI: TargetType {
    var baseURL: URL {
        switch self {
        default:
            return Config.Network.amiiboBaseURL
        }
    }

    var path: String {
        switch self {
        case .amiibo: return "/amiibo"
        }
    }

    var method: Moya.Method {
        switch self {
        case .amiibo:
            return .get
        }
    }

    var sampleData: Data {
        return "{}".data(using: .utf8)!
    }

    var task: Task {
        switch self {
        default:
            if let parameters = parameters {
                return .requestParameters(parameters: parameters, encoding: parameterEncoding)
            }
            return .requestPlain
        }
    }

    var headers: [String: String]? {
        return nil
    }

}

extension AmiiboAPI: ProductAPIType {
    var addXAuth: Bool {
        return false
    }

}
