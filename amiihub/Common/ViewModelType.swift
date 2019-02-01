//
//  ViewModelType.swift
//  amiihub
//
//  Created by  moma on 2019/2/1.
//  Copyright © 2019 imzyf. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import ObjectMapper

protocol ViewModelType {
    associatedtype Input
    associatedtype Output

    func transform(input: Input) -> Output
}

class ViewModel: NSObject {

    let provider: AmiiHubAPI

    var page = 1

    let loading = ActivityIndicator()
    let headerLoading = ActivityIndicator()
    let footerLoading = ActivityIndicator()

    let error = ErrorTracker()
    let parsedError = PublishSubject<ApiError>()

    init(provider: AmiiHubAPI) {
        self.provider = provider
        super.init()

    }

    deinit {
        logDebug("\(type(of: self)): Deinited")
    }
}
