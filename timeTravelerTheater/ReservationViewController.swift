//
//  ReservationViewController.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import UIKit

class ReservationViewController: UIViewController {
    
    var performanceDate: Date?
    
    var leaveDate: Date?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var numDays: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.minimumDate = Date()
        
    }
    
    @IBAction func dateSelected(_ sender: Any) {
        leaveDate = datePicker.date
        numDays.text = String((DateInterval.init(start: performanceDate!, end: leaveDate!).duration / 86400).rounded())
    }
    
    @IBAction func confirmButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = storyboard.instantiateViewController(withIdentifier: "NavigationController") as! UINavigationController
        let first = navigationController.viewControllers.first as? ViewController
        self.present(navigationController, animated: true, completion: nil)
    }
    
}
