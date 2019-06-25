//
//  Model.swift
//  DemoSimpleAPI
//
//  Created by Đinh Văn Trình on 6/25/19.
//  Copyright © 2019 Wes.vn. All rights reserved.
//

import UIKit

struct User : Codable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}
