//
//  FileList.swift
//  IOSLayout
//
//  Created by Kareem Dasilva on 11/20/15.
//  Copyright © 2015 Kareem Dasilva. All rights reserved.
//

import UIKit

class FileList: UITableViewController, UISplitViewControllerDelegate {
    var example = ["Floor A1", "Floor A2", "Floor A3", "Floor A4"]
    var example2 = ["Floor B1", "Floor B2", "Floor B3", "Floor B4"]
    var example3 = ["Floor C1", "Floor C2", "Floor C3", "Floor C4"]
    
    var detailViewController:ViewController? = nil
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.navigationController?.title = "Floors"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Building A"
        }
        if section == 1{
            return "Building B"
        }
        if section == 2 {
            return "Building C"
        }
        return "Building D"
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return example.count
    }
    override
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        navigationController?.dismissViewControllerAnimated(true, completion: {
            Void in
             self.navigationController?.pushViewController(ViewController(), animated: true)
        })
       
        
        

    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let section = indexPath.section
        // Configure the cell...
        if section == 0 {
            cell.textLabel?.text = example[indexPath.row]
        }
        if section == 1{
            cell.textLabel?.text = example2[indexPath.row]
        }
        if section == 2 {
            cell.textLabel?.text = example3[indexPath.row]
        }

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
