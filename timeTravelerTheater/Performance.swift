//
//  Performance.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import Foundation

struct Performance {
    let date: When
    let statistics: Statistics
    let show: Show
    
    init(date: When, statistics: Statistics, show: Show) {
        self.date = date
        self.statistics = statistics
        self.show = show
    }
    
    init(dictionary: [String: Any]) {
        let d = When(dictionary: date)
        let stats = Statistics(dictionary: statistics)
        let show = Show(dictionary: show)
    }
    self.init(date: d, statistics: stats, show: show)
    
}
