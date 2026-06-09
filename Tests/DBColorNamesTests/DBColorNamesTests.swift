import XCTest
import UXKit
@testable import DBColorNames

final class DBColorNamesTests: XCTestCase {
    
    func testBarbiePink() throws {
        
        let color = UXColor(red: 243.0/255.0, green: 87.0/255.0, blue: 169.0/255.0, alpha: 1.0)
        
        XCTAssertEqual(color.name(), "barbie pink")
    }
}
