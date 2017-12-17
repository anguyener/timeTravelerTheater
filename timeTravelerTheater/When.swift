//
//  When.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import Foundation

struct When {
    var dates: [String]
    let full: String
    let day: Int
    let month: Int
    let year: Int
    
    init(full: String, day: Int, month: Int, year: Int) {
        self.full = full
        self.day = day
        self.month = month
        self.year = year
        self.dates = [full]
    }
    
    init(dictionary: [String: Any]) {
        self.init(full: dictionary["Full"]! as! String, day: dictionary["Day"]! as! Int, month: dictionary["Month"]! as! Int, year: dictionary["Year"]! as! Int)
    }
}
