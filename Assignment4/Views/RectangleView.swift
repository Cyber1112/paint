//
//  RectangleView.swift
//  Assignment4
//
//  Created by Khakim Zhumagaliyev on 24.10.2022.
//

import UIKit

class RectangleView: UIView {

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
            context.setLineWidth(5.0);
            
            // Set the circle outerline-colour
            UIColor.red.set()
                
            context.addRect(CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
            // Draw
            context.strokePath()
        }
    }
}
