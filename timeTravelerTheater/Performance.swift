//
//  Performance.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import Foundation

struct Performance {
    var date: When
    var statistics: Statistics
    let show: Show
    
    init(date: When, statistics: Statistics, show: Show) {
        self.date = date
        self.statistics = statistics
        self.show = show
    }
    
    init(dictionary: [String: Any]) {
        var dateArray = dictionary["Date"] as! [String: Any]
        var stats = dictionary["Statistics"] as! [String: Int]
        let show = dictionary["Show"] as! [String: String]
        
        self.init(date: When(dictionary: dateArray), statistics: Statistics(dictionary: stats), show: Show(dictionary: show))
    }
        
}
