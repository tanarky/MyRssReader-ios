//
//  ViewController.swift
//  MyRssReader
//
//  Created by satoshi on 2016/01/16.
//  Copyright © 2016年 tanarky. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var items: [String] = ["あああ", "いいい", "うううううううううううううううううううううううううううううううううううううううううううううう"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MyTableViewCell
        cell.label1.text = self.items[indexPath.row];
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
}

