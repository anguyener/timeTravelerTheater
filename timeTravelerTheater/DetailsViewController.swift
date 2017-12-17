//
//  DetailsViewController.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var performance: Performance?
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var numPerformances: UILabel!
    
    @IBOutlet weak var numAttended: UILabel!
    
    @IBOutlet weak var dateView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = performance?.show.name
        typeLabel.text = performance?.show.type
        locationLabel.text = performance?.show.theater
        numPerformances.text =  String(describing: performance?.statistics.performances)
        numAttended.text = String(describing: performance?.statistics.attendance)
        dateView.dataSource = self
    }
}

extension DetailsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (performance?.date.dates.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dateView.dequeueReusableCell(withIdentifier: "DateCell", for: indexPath) as! DateCell
        cell.configure(performance?.date.dates[indexPath.item])
        return cell
    }
}
