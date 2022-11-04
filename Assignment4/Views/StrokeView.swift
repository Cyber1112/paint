//
//  StrokeView.swift
//  Assignment4
//
//  Created by Khakim Zhumagaliyev on 24.10.2022.
//

import UIKit

class StrokeView: UIView {

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
            
            // Draw
            context.strokePath()
        }
    }
    var line = [CGPoint]()
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else {return}
        
        line.append(point)
        setNeedsDisplay()
    }

}
