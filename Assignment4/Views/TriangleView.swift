//
//  TriangleView.swift
//  Assignment4
//
//  Created by Khakim Zhumagaliyev on 24.10.2022.
//

import UIKit

class TriangleView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
        
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        // Get the Graphics Context
        if let context = UIGraphicsGetCurrentContext() {
            
            // Set the circle outerline-width
            context.setLineWidth(2.0)
            
            // Set the circle outerline-colour
            UIColor.red.set()
            
            context.move(to: CGPoint(x: 0, y: 0))
            context.addLine(to: CGPoint(x: frame.size.width, y: 0))
            context.addLine(to: CGPoint(x: frame.size.width, y: frame.size.height))
            context.closePath()
            
            
            // Draw
            context.strokePath()
        }
    }

}
