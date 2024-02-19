//
//  TriangleGeometry.swift
//
//
//  Created by  Arsen Dadaev on 19.02.2024.
//

import Foundation

struct TriangleGeometry: Shape {
    let sideA: Double
    let sideC: Double
    let sideB: Double
    
    init(sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    
    func calculateArea() -> Double {
        let p = (sideA + sideB + sideC) / 2
        let area = sqrt(p * (p - sideA) * (p - sideB) * (p - sideC))
        
        return area
    }
    
    func isRightTriangle() -> Bool {
        let sides = [sideA, sideB, sideC].sorted()
        
        if sides[2] * sides[2] == sides[0] * sides[0] + sides[1] * sides[1] {
            return true
        } else {
            return false
        }
    }
}
