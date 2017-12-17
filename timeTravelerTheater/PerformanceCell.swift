//
//  PerformanceCell.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/15/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import UIKit

class PerformanceCell: UITableViewCell {
    
    //PerformanceNameLabel
    
    @IBOutlet weak var name: UILabel!
    
    var performance: Performance? {
        didSet(newValue) {
            self.name.text = self.performance?.show.name
        }
    }
    
}
