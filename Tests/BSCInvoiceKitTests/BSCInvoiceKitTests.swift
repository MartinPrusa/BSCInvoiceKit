import XCTest
@testable import BSCInvoiceKit

final class BSCInvoiceKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BSCInvoiceKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
