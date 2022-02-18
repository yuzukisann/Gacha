//
//  Monster.swift
//  Gaoha
//
//  Created by 高井佑月 on 2022/01/14.
//

import Foundation
import RealmSwift

class Monster: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var imageName: String = ""
    @objc dynamic var type: String = ""
}
