//
//  ViewController.swift
//  testing-capinsets
//
//  Created by Mengying Feng on 12/08/2016.
//  Copyright © 2016 Mengying Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var imageView: UIImageView!
//    @IBOutlet weak var imageViewHeightContraint: NSLayoutConstraint!
//    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myViewHeight: NSLayoutConstraint!
    
    
    
    
    var myString = "automatically increase height depending on the  automatically increase height depending on the  automatically increase height depending on the  automatically increase height depending on the  automatically increase height depending on the  automatically increase height depending on the  automatically increase height depending on the  automatically increase height depending on the "
    
    var views = Dictionary<String, AnyObject>()
    var allConstraints = [NSLayoutConstraint]()
    var myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        myLabel.frame = CGRectMake(0,0, myView.layer.frame.width, myView.layer.frame.height)
        
        print("myLabel.frame.height before:\(myLabel.frame.height)")
        
        myLabel.text = myString
        myLabel.numberOfLines = 0
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        myView.addSubview(myLabel)
        
        views = ["myLabel": myLabel]
        
        setConstraints()
        
        myView.layoutIfNeeded()
        
        print("myLabel.frame.height after:\(myLabel.frame.height)")
        
        myViewHeight.constant = myLabel.frame.height + 10
        
        
    }
    
    
    
    
    override func viewDidAppear(animated: Bool) {

        
//        if let img = UIImage(named: "rect2") {
//            let img2 = img.resizableImageWithCapInsets(UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20), resizingMode: UIImageResizingMode.Stretch)
//            imageView.image = img2
//            imageViewHeightContraint.constant = textLabel.frame.height + 10
//        }
        
        
//        myViewHeight.constant = myLabel.frame.height + 10
        
        
    }
    
    

    func setConstraints() {
        
        addConstraints("V:|-[myLabel]")
        addConstraints("H:|-[myLabel]-|")
        
        
        NSLayoutConstraint.activateConstraints(allConstraints)
        
    }
    
    
    func addConstraints(format: String) {
        let newConstraints = NSLayoutConstraint.constraintsWithVisualFormat(format, options: [], metrics: nil, views: views)
        allConstraints += newConstraints
    }
    
    
}

