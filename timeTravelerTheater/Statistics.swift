//
//  Statistics.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import Foundation

struct Statistics {
    let gross: Int
    let performances: Int
    let attendance: Int
    let capacity: Int
    let potential: Int
    
    init(gross: Int, performances: Int, attendance: Int, capacity: Int, potential: Int) {
        self.gross = gross
        self.performances = performances
        self.attendance = attendance
        self.capacity = capacity
        self.potential = potential
    }
    
    init(dictionary: [String: Int]) {
        self.init(gross: dictionary["gross"]!, performances: dictionary["performances"]!, attendance: dictionary["attendance"]!, capacity: dictionary["capacity"]!, potential: dictionary["potential"]!)
    }
}
