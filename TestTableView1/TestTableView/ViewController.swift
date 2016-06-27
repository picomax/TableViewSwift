//
//  ViewController.swift
//  TestTableView
//
//  Created by picomax on 2016. 6. 21..
//  Copyright © 2016년 picomax. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var items: [String] = ["Egg Benedict", "Mushroom Risotto", "Full Breakfast", "Hamburger", "Ham and Egg Sandwich", "Creme Brelee", "White Chocolate Donut", "Starbucks Coffee", "Vegetable Curry", "Instant Noodle with Egg", "Noodle with BBQ Pork", "Japanese Noodle with Pork", "Green Tea", "Thai Shrimp Cake", "Angry Birds Cake", "Ham and Cheese Panini"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("theCell", forIndexPath: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    // MARK: - UITableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        print("commitEditingStyle")
    }
}
