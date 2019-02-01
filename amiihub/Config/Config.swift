//
//  Config.swift
//  amiihub
//
//  Created by  moma on 2019/2/1.
//  Copyright © 2019 imzyf. All rights reserved.
//

import Foundation

struct Config {

    struct App {

    }

    struct Network {

        static var amiiboBaseURL: URL {
            return URL(string: "http://www.amiiboapi.com/api")!
        }

        static var loggingEnabled = true
    }
}
