//
//  ViewController.swift
//  timeTravelerTheater
//
//  Created by Anna Nguyen on 12/14/17.
//  Copyright © 2017 Anna Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var performances: [Performance] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        fetchData()
    }
    
    func fetchData() {
        let url = URL(string: "https://raw.githubusercontent.com/anguyener/timeTravelerTheater/master/broadway.json")!
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url){ (data, response, err) in
            let data = data!
            let json = try! JSONSerialization.jsonObject(with: data, options: [])
            let array = json as! [[String: Any]]
            // print(array)
            self.performances = array.map { Performance(dictionary: $0) }
            self.edit()
            //   print(self.performances)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        task.resume()
    }
    
    func edit(){
        var size = performances.count-2
        var x = 0
        var index = 0
        while index != 1000 {
            size = performances.count
            x = index + 1
            while x < size {
                if performances[index].show.name == performances[x].show.name {
                    performances[index].date.dates.append(performances[x].date.full) //just does the first one....
                    performances[index].statistics.attendance += performances[x].statistics.attendance
                    performances[index].statistics.performances += performances[x].statistics.performances
                    performances.remove(at: x)
                    size -= 1
                }
                else { x += 1 }
            }
            index += 1
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailsViewController else { return }
        guard let source = sender as? PerformanceCell else { return } //carries global performance and sets name for cell
        destination.performance = source.performance //carries over global performance
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return performances.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let performance = performances[indexPath.item]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PerformanceCell", for: indexPath) as! PerformanceCell
        cell.performance = performance
        return cell
    }
}

