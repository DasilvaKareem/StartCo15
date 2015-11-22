//
//  ViewController.swift
//  IOSLayout
//
//  Created by Kareem Dasilva on 11/19/15.
//  Copyright © 2015 Kareem Dasilva. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var planView: UIView!
    var planPDF = UIImage(named: "floorplan.jpg")
    var currentType = ("plumbing.png")
    func addGestures(view:UIView){
        view.addGestureRecognizer(removeTextGesture)
        view.addGestureRecognizer(expandedView)
    }
    
    
    var addTextGesture = UITapGestureRecognizer()
    var removeTextGesture = UISwipeGestureRecognizer()
    var expandedView = UITapGestureRecognizer()
    
    func createText(){
     //create Alert fo certain file adds a note)
     
        
       /* let textNote = UILabel(frame: CGRect(origin: addTextGesture.locationInView(planView), size: size))
        textNote.center = addTextGesture.locationInView(planView)
        let enterNote = UIAlertController(title: "Create Note", message: "Add a note at this section", preferredStyle: UIAlertControllerStyle.Alert)
            
        enterNote.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
        enterNote.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { action
            in
            let note = enterNote.textFields![0]
            textNote.text = note.text
            
            self.planView.addSubview(textNote)
         
          
        
            
            
        }))
        
        enterNote.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            textField.placeholder = "Note"
        })
        self.presentViewController(enterNote, animated: true, completion: {
        })*/
        planView.addSubview(addPlanObject(currentType))
        
      //  AudioServicesPlaySystemSound(
      

        

    
     
    }
    func removeText(){
        let currentView = removeTextGesture.view
        UIView.animateWithDuration(0.5, delay: 0.0, options: [], animations: {
            currentView!.center.x += self.view.bounds.width
            }, completion: {
                (value: Bool) in
                if value == true {
                    currentView?.removeFromSuperview()
                    self.addGestures(self.planView.subviews.last!)

                }
                
        })
        print("removed")
        
    }
    func history(){
        self.performSegueWithIdentifier("history", sender: self)
    }
    
    @IBAction func lightSelect(sender: AnyObject) {
        
        self.currentType = "light.png"
        let btn = sender as! UIButton
        let img = btn.imageView
        img?.layer.borderColor = UIColor.redColor().CGColor
        img?.layer.borderWidth = 2
    
    }
    
    @IBAction func plumbingSelect(sender: AnyObject) {
        self.currentType = "plumbing.png"
        let btn = sender as! UIButton
        let img = btn.imageView
        img?.layer.borderColor = UIColor.blueColor().CGColor
        img?.layer.borderWidth = 2

    }
    
    @IBAction func adaSelect(sender: AnyObject) {
        self.currentType = "handicap.png"
        let btn = sender as! UIButton
        let img = btn.imageView
        img?.layer.borderColor = UIColor.yellowColor().CGColor
        img?.layer.borderWidth = 2

    }
    
    @IBAction func wallSelect(sender: AnyObject) {
        self.currentType = "wall.png"
        let btn = sender as! UIButton
        let img = btn.imageView
        img?.layer.borderColor = UIColor.redColor().CGColor
        img?.layer.borderWidth = 2

    }
    
    @IBAction func coolingSelect(sender: AnyObject) {
        self.currentType = "ac.png"
        let btn = sender as! UIButton
        let img = btn.imageView
        img?.layer.borderColor = UIColor.redColor().CGColor
        img?.layer.borderWidth = 6
        
       

    }
    
    @IBAction func waterSelect(sender: AnyObject) {
        self.currentType = "water.png"
        let btn = sender as! UIButton
        let img = btn.imageView
        img?.layer.borderColor = UIColor.redColor().CGColor
        img?.layer.borderWidth = 2

    }
    
    @IBAction func signSelect(sender: AnyObject) {
        self.currentType = "sign.png"
        let btn = sender as! UIButton
        let img = btn.imageView
        img?.layer.borderColor = UIColor.redColor().CGColor
        img?.layer.borderWidth = 2

    }
    var planObject = (UIImage)()
    func addPlanObject(type:String) -> UIView{
        planObject = UIImage(named: type)!
        
        let size = CGSize(width: 50, height: 50)
        let customView = UIView(frame:CGRect(origin: addTextGesture.locationInView(planView), size: size))
        let iconImage = UIImageView(frame: customView.bounds)
        iconImage.image = planObject
        customView.addSubview(iconImage)
        customView.addGestureRecognizer(removeTextGesture)
        customView.addGestureRecognizer(expandedView)
        if type == "ac.png"{
            customView.backgroundColor = UIColor.redColor()
        }
        return customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        AudioServicesPlayAlertSound(UInt32(kSystemSoundID_Vibrate))
        addTextGesture.numberOfTouchesRequired = 1
        
        print(view.frame.maxY)
        addTextGesture.addTarget(self, action:"createText")
        removeTextGesture.addTarget(self, action:"removeText")
        removeTextGesture.direction = UISwipeGestureRecognizerDirection.Right
        expandedView.addTarget(self, action: "history")
        let planImage = UIImageView(frame: planView.bounds)
        planImage.image = UIImage(named: "floorplan.gif")
        planView.addSubview(planImage)
        
        planView.addGestureRecognizer(addTextGesture)
        // Do any additional setup after loading the view, typically from a nib.
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

