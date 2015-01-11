//
//  MTButton.swift
//  ButtonHitAreaTest
//
//  Created by Michael Teeuw on 11-01-15.
//  Copyright (c) 2015 Michael Teeuw. All rights reserved.
//

import UIKit

class MTButton: UIButton {

    
    // Create a property to store the hit insets:
    
    var hitInsets:UIEdgeInsets = UIEdgeInsetsZero
    
    
    override func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool {

        
        // Generate the new hit area by adding the hitInsets:
        
        let newRect = CGRect(x: 0 + hitInsets.left,
                             y: 0 + hitInsets.top,
                         width: self.frame.size.width - hitInsets.left - hitInsets.right,
                        height: self.frame.size.height - hitInsets.top - hitInsets.bottom)
        
        
        // Check if the point is within the new hit area:
        
        return CGRectContainsPoint(newRect, point)
    }
}
