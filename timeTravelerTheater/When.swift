//
//  When.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import Foundation

struct When {
    let full: String
    let day: Int
    let month: Int
    let year: Int
    
    init(full: String, day: Int, month: Int, year: Int) {
        self.full = full
        self.day = day
        self.year = year
    }
    
    init(dictionary: [String: Any]) {
        self.init(full: dictionary["full"]!, day: dictionary["day"]!, month: dictionary["month"]!, year: dictionary["year"]!)
    }
}
