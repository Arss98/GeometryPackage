//
//  CircleGeometry.swift
//  
//
//  Created by  Arsen Dadaev on 19.02.2024.
//

import Foundation

struct CircleGeometry: Shape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}
