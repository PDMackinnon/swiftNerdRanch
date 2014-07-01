//
//  HypnosisView.swift
//  HypnosisterSwift
//
//  Created by Paul Mackinnon on 01/07/2014.
//  Copyright (c) 2014 Dundee University. All rights reserved.
//

import UIKit

class HypnosisView: UIView {

    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        
        self.backgroundColor = UIColor.clearColor()
        
        
    }

  
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        
        let ctx = UIGraphicsGetCurrentContext()
        
        let bounds = self.bounds
        
        let centre:CGPoint = CGPoint(x: bounds.origin.x + bounds.size.width / 2.0 , y: bounds.origin.y + bounds.size.height / 2.0 )
    
        
        let maxRadius : CGFloat  = CGFloat(hypot(Double(bounds.size.width), Double(bounds.size.height))) / 2.0

    
        CGContextSetLineWidth(ctx, 10.0)
        
        
        CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0)
        
        
        
         //   CGContextAddArc(ctx, centre.x, centre.y, maxRadius, 0, CGFloat(M_PI * 2), 1)

          //  CGContextStrokePath(ctx)
        
        
        
        
        
        for var currentRadius:CGFloat = maxRadius; currentRadius > 0; currentRadius -= 20 {
            
            
            CGContextAddArc(ctx, centre.x, centre.y, currentRadius, 0, CGFloat(M_PI * 2), 1)
            
            CGContextStrokePath(ctx)
            
        }
        
        
        
        
        
    }


}
