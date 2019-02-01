//
//  Navigator.swift
//  amiihub
//
//  Created by  moma on 2019/1/17.
//  Copyright © 2019 imzyf. All rights reserved.
//

import Foundation
import Hero

protocol Navigatable {
    var navigator: Navigator { get set }
}

class Navigator {

    static var `default` = Navigator()

    // MARK: - segues list, all app scenes
    enum Scene {

    }

    enum Transition {

    }

    // MARK: - invoke a single segue

}
