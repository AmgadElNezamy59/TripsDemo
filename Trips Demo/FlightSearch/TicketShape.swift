//
//  TicketShape.swift
//  Trips Demo
//
//  Created by Amgad Salah on 15/12/2023.
//

import SwiftUI


struct TicketShape: Shape{ // define a custom shape that conforms to the Shape protocol
    func path(in rect: CGRect) -> Path { // define a function that returns the path of the shape
        var path = Path () // create a new Path object
        let width = rect.size.width // store the width of the bounding rectangle
        let height = rect.size.height // store the height of the bounding rectangle
        
        
        // move the path to the origin (top left corner)
        path.move(to: CGPoint(x: 0, y: 0))
        
        // add a line to the top right corner
        path.addLine(to: CGPoint(x: width, y: 0))
        
        // add a line to the right side of the curve
        path.addLine(to: CGPoint(x: width, y: 0.58721*height))
        
        // add a cubic curve to the top part of the curve
        path.addCurve(to: CGPoint(x: 0.97807*width, y: 0.67442*height), control1:CGPoint(x: 0.98789*width,y:0.58721*height), control2: CGPoint(x:0.97807*width, y: 0.62626*height))
        
        
        // add another cubic curve to the bottom part of the curve
        path.addCurve(to: CGPoint(x: width, y: 0.76163*height), control1:CGPoint(x: 0.97807*width, y: 0.72258*height), control2: CGPoint(x:0.98789*width, y: 0.76163*height))
        
        // add a line to the bottom right corner
        path.addLine(to: CGPoint(x: width, y: height) )
        
        // add a line to the bottom left corner
        path.addLine(to: CGPoint(x: 0, y: height))
        
        // add a line to the left side of the curve
        path.addLine(to: CGPoint(x: 0, y: 0.75581*height))
        
        
        // add a cubic curve to the top part of the curve
        path.addCurve(to: CGPoint(x: 0.02193*width, y: 0.6686*height), control1:CGPoint(x: 0.01211*width, y: 0.75581*height), control2: CGPoint(x:0.02193*width, y: 0.71677*height))
        
        // add another cubic curve to the bottom part of the curve
        path.addCurve(to: CGPoint(x: 0, y: 0.5814*height), control1: CGPoint(x:0.02193*width, y: 0.62044*height), control2: CGPoint(x: 0.01211*width,y: 0.5814*height))
        
        path.addLine(to: CGPoint(x:0, y: 0)) // add a line to the origin
        
        path.closeSubpath()
        return path
        
    }
}
