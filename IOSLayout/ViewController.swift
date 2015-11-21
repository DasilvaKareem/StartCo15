//
//  ViewController.swift
//  IOSLayout
//
//  Created by Kareem Dasilva on 11/19/15.
//  Copyright © 2015 Kareem Dasilva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var planView: UIView!
    var planPDF = UIImage(named: "floorplan.jpg")
    var planImage = UIImageView()
    
    
    var addTextGesture = UILongPressGestureRecognizer()
    
    func createText(){
     //create Alert fo certain file adds a note)
        let size = CGSize(width: 500, height: 500)
        
        let textNote = UILabel(frame: CGRect(origin: addTextGesture.locationInView(planView), size: size))
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
        })
    }
    
    var planObject = (UIImage)()
    func addPlanObject(type:String){
        let Tag = (UIButton)()
        planObject = UIImage(named: type)!
        Tag.setImage(planObject, forState: UIControlState.Normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTextGesture.addTarget(self, action:"createText")
        planImage.image = UIImage(named: "floorplan.jpg")
        planImage.frame = CGRect(origin: planView.frame.origin, size: planView.frame.size)
       
        planView.addSubview(planImage)
        
        planView.addGestureRecognizer(addTextGesture)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

