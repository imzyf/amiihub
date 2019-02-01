//
//  Api.swift
//  amiihub
//
//  Created by  moma on 2019/2/1.
//  Copyright © 2019 imzyf. All rights reserved.
//

import Foundation
import RxSwift
import Moya
import ObjectMapper
import Moya_ObjectMapper

protocol AmiiHubAPI {
    func amiibo(name: String?, id: String?) -> Single<[Amiibo]>
}

enum ApiError: Error {
    case serverError(response: ErrorResponse)
}

class Api {

    static let shared = Api()

    let amiiboProvider: AmiiboNetworking

    private init() {
        amiiboProvider = AmiiboNetworking.amiiboNetworking()
    }
}

extension Api {

    private func request(_ target: AmiiboAPI) -> Single<Any> {
        return amiiboProvider.request(target)
            .mapJSON()
            .observeOn(MainScheduler.instance)
            .asSingle()
    }

    private func requestObject<T: BaseMappable>(_ target: AmiiboAPI, type: T.Type) -> Single<T> {
        return amiiboProvider.request(target)
            .mapObject(T.self)
            .observeOn(MainScheduler.instance)
            .asSingle()
    }

    private func requestArray<T: BaseMappable>(_ target: AmiiboAPI, type: T.Type) -> Single<[T]> {
        return amiiboProvider.request(target)
            .mapArray(T.self)
            .observeOn(MainScheduler.instance)
            .asSingle()
    }
}

extension Api: AmiiHubAPI {

    func amiibo(name: String?, id: String?) -> Single<[Amiibo]> {
        return requestArray(.amiibo(name: name, id: id), type: Amiibo.self)
    }

}
