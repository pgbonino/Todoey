//
//  Item.swift
//  Todoey
//
//  Created by Pedro Gallello Bonino on 07/10/2018.
//  Copyright © 2018 Pedro Gallello Bonino. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated : Date?
 
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
