//
//  ViewController.swift
//  TestTableView
//
//  Created by picomax on 2016. 6. 21..
//  Copyright © 2016년 picomax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView:UITableView)->Int {
        print("numberOfSectionsInTableView");
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection");
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("cellForRowAtIndexPath");
        let cell = tableView.dequeueReusableCellWithIdentifier("theCell", forIndexPath: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        print("viewForHeaderInSection");
        let screenSize = UIScreen.mainScreen().bounds;
        let view = UIView(frame:CGRectMake(0, 0, screenSize.width, 0))
        return view;
    }
    
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        print("viewForFooterInSection");
        let screenSize = UIScreen.mainScreen().bounds;
        let view = UIView(frame:CGRectMake(0, 0, screenSize.width, 0))
        return view;
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        print("canEditRowAtIndexPath")
        if indexPath.row % 2 == 0 {
            return true
        } else {
            return false
        }
    }
    
}


// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        print("editingStyleForRowAtIndexPath")
        return .Delete;
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        print("commitEditingStyle")
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
        let controller: UIViewController = UIViewController(nibName:"DetailViewController", bundle: nil)
        controller.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
