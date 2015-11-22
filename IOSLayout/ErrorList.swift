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
        return 3
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:cells = list.dequeueReusableCellWithIdentifier("cell") as! cells
        
    
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
    
    
    @IBOutlet weak var error: UILabel!
}