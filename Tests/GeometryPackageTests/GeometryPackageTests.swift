import XCTest
@testable import GeometryPackage

final class GeometryPackageTests: XCTestCase {
    func testCircleArea() throws {
        let circle = CircleGeometry(radius: 5.0)
        XCTAssertEqual(circle.calculateArea(), 78.54, accuracy: 0.01)
    }
    
    func testTriangleArea() throws {
        let triangle = TriangleGeometry(sideA: 3.0, sideB: 4.0, sideC: 5.0)
        XCTAssertEqual(triangle.calculateArea(), 6.0, accuracy: 0.01)
        XCTAssertTrue(triangle.isRightTriangle())
    }
}
