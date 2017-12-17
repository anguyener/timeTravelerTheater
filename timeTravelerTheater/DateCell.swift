//
//  DateCell.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/16/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import UIKit

class DateCell: UITableViewCell {
    
    //todo add date label
    var date: String?
    
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(_ with: String) {
        dateLabel.text = with
    }
}
