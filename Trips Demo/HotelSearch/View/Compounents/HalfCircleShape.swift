//
//  CurveHotel.swift
//  Trips Demo
//
//  Created by Amgad Salah on 15/12/2023.
//

import Foundation
import SwiftUI


struct HalfCircleShape: Shape{
    var midY :CGFloat // a property to store the middle y coordinate of the shape
    func path(in rect: CGRect) -> Path { // a function to create the path of the shape
        
        return Path{ path in // return a new Path with a closure
            
            // move the path to the origin (top left corner)
            path.move(to: CGPoint(x: 0, y:0))
            
            // add a line to the top right corner
            path.addLine(to: CGPoint(x:rect.width, y: 0))
            
            // add a line to the bottom right corner
            path.addLine(to: CGPoint(x:rect.width, y: rect.height ))
            
            // add a line to the bottom left corner
            path.addLine(to: CGPoint(x:0, y: rect.height ))
            
            // a constant to store the width of the shape plus some extra space
            let width = rect.width + 20
            
            // a constant to store the middle y coordinate of the shape
            let midY = rect.height / 2
            
            // move the path to the start of the curve
            path.move(to: CGPoint(x: width, y: midY - 28))
            
            // a constant to store the end point of the first curve
            let to = CGPoint(x: width - 40, y: midY )
            
            // a constant to store the first control point of the first curve
            let control1 = CGPoint(x: width, y: midY - 30)
            
            // a constant to store the second control point of the first curve
            let control2 = CGPoint(x: width - 40, y: midY - 30)
            
            // add a cubic curve to the path
            path.addCurve(to: to, control1: control1, control2: control2)
            
            // a constant to store the end point of the second curve
            let to1 = CGPoint(x: width , y: midY + 28)
            
            // a constant to store the first control point of the second curve
            let control3 = CGPoint(x: width - 40, y: midY + 30)
            
            // a constant to store the second control point of the second curve
            let control4 = CGPoint(x: width, y: midY + 30)
            
            // add another cubic curve to the path
            path.addCurve(to: to1, control1: control3, control2: control4)
            
        }
    }
}

