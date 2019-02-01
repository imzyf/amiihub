//
//  HomeTabBarViewModel.swift
//  amiihub
//
//  Created by  moma on 2019/2/1.
//  Copyright © 2019 imzyf. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import RAMAnimatedTabBarController

class HomeTabBarViewModel: ViewModel, ViewModelType {

    struct Input {
        let whatsNewTrigger: Observable<Void>
    }

    struct Output {
        let tabBarItems: Driver<[HomeTabBarItem]>
    }

    let loggedIn: BehaviorRelay<Bool>

    init(loggedIn: Bool, provider: AmiiHubAPI) {
        self.loggedIn = BehaviorRelay(value: loggedIn)
        super.init(provider: provider)
    }

}

enum HomeTabBarItem: Int {
    case search

    var image: UIImage? {
        switch self {
        case .search: return nil
        }
    }

    var title: String {
        switch self {
        case .search: return "amm"
        }
    }

    var animation: RAMItemAnimation {
        var animation: RAMItemAnimation
        switch self {
        case .search: animation = RAMFlipLeftTransitionItemAnimations()
        }
        return animation
    }

}
