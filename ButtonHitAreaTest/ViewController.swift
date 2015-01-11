//
//  ViewController.swift
//  ButtonHitAreaTest
//
//  Created by Michael Teeuw on 11-01-15.
//  Copyright (c) 2015 Michael Teeuw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Create an instance of the subclassed button.
    let button = MTButton()
    
    // Define the edgeInstes to use in this example.
    let edgeInsets = UIEdgeInsets(top: -20, left: -20, bottom: -20, right: -20)
    
    // Create a view to display the edgeInsets as a grey box.
    let edgeInsetDisplayView = UIView()
    
    // Create a label to display the edgeInsets.
    let edgeInsetDisplayLabel = UILabel()
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        // Set the background color of the edgeInsetDisplayView to make it light grey.
        edgeInsetDisplayView.backgroundColor = UIColor(white: 0.8, alpha: 1)
        
        // Configure the Button
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Highlighted)
        button.setTitle("Click me!", forState: .Normal)
        button.backgroundColor = UIColor(white: 0.5, alpha: 1)
        
        // Adjust the hitInsets of the button.
        button.hitInsets = edgeInsets
        
        // Set the text to display the edgeInsets.
        edgeInsetDisplayLabel.font = UIFont.systemFontOfSize(10)
        edgeInsetDisplayLabel.text = "UIEdgeInsets(top: \(edgeInsets.top), left: \(edgeInsets.left), bottom: \(edgeInsets.bottom), right: \(edgeInsets.right))"
        
        // Add all views to the ViewController's view.
        view.addSubview(edgeInsetDisplayLabel)
        view.addSubview(edgeInsetDisplayView)
        view.addSubview(button)
        
        // Disable the auto-generated Autolayouts.
        button.setTranslatesAutoresizingMaskIntoConstraints(false)
        edgeInsetDisplayView.setTranslatesAutoresizingMaskIntoConstraints(false)
        edgeInsetDisplayLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Add the layout constraints for all views.
        view.addConstraint(NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: button, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: edgeInsetDisplayView, attribute: .Left, relatedBy: .Equal, toItem: button, attribute: .Left, multiplier: 1, constant: +edgeInsets.left))
        view.addConstraint(NSLayoutConstraint(item: edgeInsetDisplayView, attribute: .Top, relatedBy: .Equal, toItem: button, attribute: .Top, multiplier: 1, constant: +edgeInsets.top))
        view.addConstraint(NSLayoutConstraint(item: edgeInsetDisplayView, attribute: .Height, relatedBy: .Equal, toItem: button, attribute: .Height, multiplier: 1, constant: -edgeInsets.top - edgeInsets.bottom))
        view.addConstraint(NSLayoutConstraint(item: edgeInsetDisplayView, attribute: .Width, relatedBy: .Equal, toItem: button, attribute: .Width, multiplier: 1, constant: -edgeInsets.left - edgeInsets.right))

        view.addConstraint(NSLayoutConstraint(item: edgeInsetDisplayLabel, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: edgeInsetDisplayLabel, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 0.5, constant: 0))

        
    }
    

    

}

