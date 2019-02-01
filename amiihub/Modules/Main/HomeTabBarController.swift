//
//  HomeTabBarController.swift
//  amiihub
//
//  Created by  moma on 2019/2/1.
//  Copyright © 2019 imzyf. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController

class HomeTabBarController: UITabBarController {

    var viewModel: HomeTabBarViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        makeUI()
        bindViewModel()
    }

    func makeUI() {
        // Configure tab bar

        tabBar.isTranslucent = false

    }

    func bindViewModel() {

    }
}
