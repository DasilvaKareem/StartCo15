//
//  ErrorList.swift
//  IOSLayout
//
//  Created by Kareem Dasilva on 11/22/15.
//  Copyright © 2015 Kareem Dasilva. All rights reserved.
//

import UIKit

class ErrorList: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var list: UITableView!
    var history = ["Fan coil was burnt out.Replaced new fan coil..Replacement cost: $80", "AC unit making loud noises.Filter needed to be replaced 9-4", "Filter Replaced","Customer reported AC unit making loud noises","AC does not work,Fan coil needs to be replaced", "AC unit is not repairable, a new AC unit is needed","AC Unit installed on 2nd floor", "Scrapped Lol" ]
    var date = ["11-18-2015","11-16-2015","11-3-2015","10-30-15","10-15-15", "9-30-2015","9-12-2015"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:cells = list.dequeueReusableCellWithIdentifier("cell") as! cells
        cell.error.text = history[indexPath.row]
        cell.error.textColor = UIColor.redColor()
        cell.date.text = date[indexPath.row]
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
class cells: UITableViewCell {
    
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var error: UILabel!
}