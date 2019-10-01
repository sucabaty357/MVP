//
//  Object.swift
//  MVP
//
//  Created by Thinh Nguyen on 9/4/19.
//  Copyright © 2019 Trong Duong. All rights reserved.
//

import UIKit

class User: Object {
    @objc dynamic var name = ""
    @objc dynamic var pet: Pet?
}

class Pet: Object {
    @objc dynamic var petName = ""
    @objc dynamic var owner: User?
}
