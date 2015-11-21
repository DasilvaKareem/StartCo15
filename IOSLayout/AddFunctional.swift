//
//  AddFunctional.swift
//  IOSLayout
//
//  Created by Kareem Dasilva on 11/21/15.
//  Copyright © 2015 Kareem Dasilva. All rights reserved.
//

import UIKit

class Icons {
    var image = (UIImage)()
    var id = (String)()
    var type = (String)()
}
class AddElementFeature: UIView{
    
 
    @IBOutlet weak var overview: UILabel!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName:"AddElement", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as! UIView
    }
    override init (frame : CGRect) {
        super.init(frame : frame)
        
    }
    
    convenience init () {
        self.init(frame:CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
 
    
}