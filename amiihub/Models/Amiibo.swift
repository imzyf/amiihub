//
//  Amiibo.swift
//  amiihub
//
//  Created by  moma on 2019/2/1.
//  Copyright © 2019 imzyf. All rights reserved.
//

import Foundation
import ObjectMapper

struct Amiibo: Mappable {

    var amiiboSeries: String?
    var character: String?
    var gameSeries: String?
    var head: String?
    var image: String?
    var name: String?
    /// Date Format: yyyy-mm-dd
    var release: String?
    var tail: String?
    var type: String?

    init() {}
    init?(map: Map) {
    }

    mutating func mapping(map: Map) {
        amiiboSeries <- map["amiiboSeries"]
        character <- map["character"]
        gameSeries <- map["gameSeries"]
        head <- map["head"]
        image <- map["image"]
        name <- map["name"]
        release <- map["release"]
        tail <- map["tail"]
        type <- map["type"]
    }
}
