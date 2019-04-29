//
//  FlagDraw.swift
//  BrazilFlag
//
//  Created by Kirill Parkhimchik on 4/29/19.
//  Copyright © 2019 Kirill Parkhimchik. All rights reserved.
//

import UIKit

@IBDesignable

class BrazilFlag: UIView {
    
    var height: CGFloat {
        return min(bounds.size.width,
                   bounds.size.height)
    }
    
    var cicleCentreRadius: CGFloat {
        return height / 7.5
    }
    
    var cicleCentre: CGPoint {
        return CGPoint(x: bounds.midX,
                       y: bounds.midY)
    }
    
    private func pathForCicle() -> UIBezierPath {
        let ciclePath = UIBezierPath(arcCenter: cicleCentre,
                                     radius: cicleCentreRadius,
                                     startAngle: 0.0,
                                     endAngle: 2 * CGFloat.pi,
                                     clockwise: false)
        return ciclePath
    }
    
    override func draw(_ rect: CGRect) {
       
        
        // rectangle drawing
        
        let rectanglePath = UIBezierPath(rect: CGRect(x: 0, y: 243, width: 414, height: 250))
        UIColor.green.setFill()
        rectanglePath.fill()
        
        let bezierPath = UIBezierPath()
        
        // lines frawing
        
        bezierPath.move(to: CGPoint(x: 22.5, y: 367.5))
        bezierPath.addLine(to: CGPoint(x: 207, y: 266))
        bezierPath.addLine(to: CGPoint(x: 391.5, y: 367.5))
        bezierPath.addLine(to: CGPoint(x: 207, y: 471))
        bezierPath.addLine(to: CGPoint(x: 22.5, y: 367.5))
        bezierPath.close()
        UIColor.yellow.setFill()
        bezierPath.fill()
        
        // cicle
        
        UIColor.blue.setFill()
        pathForCicle().fill()
    }

}
