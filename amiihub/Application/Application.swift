//
//  Application.swift
//  amiihub
//
//  Created by  moma on 2019/1/17.
//  Copyright © 2019 imzyf. All rights reserved.
//

import UIKit

final class Application: NSObject {

    static let shared = Application()

    var window: UIWindow?

    let provider: AmiiHubAPI
    let navigator: Navigator

    private override init() {
        provider = Api.shared
        navigator = Navigator.default
        super.init()
    }

    func presentInitialScreen(in window: UIWindow?) {
        guard let window = window else { return }
        self.window = window

        //        presentTestScreen(in: window)
        //        return

        let rootVC = R.storyboard.main.homeTabBarController()!

        window.rootViewController = rootVC
    }
}
