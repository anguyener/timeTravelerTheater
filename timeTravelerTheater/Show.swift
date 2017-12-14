//
//  Show.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import Foundation

struct Show {
    let type: String
    let name: String
    let theater: String
    
    init(type: String, name: String, theater: String) {
        self.type = type
        self.name = name
        self.theater = theater
    }
    
    init(dictionary: [String: String]) {
        self.init(type: dictionary["type"]!, name: dictionary["name"]!, theater: dictionary["theater"]!)
    }
}
