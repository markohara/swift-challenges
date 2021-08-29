import XCTest
@testable import swift_challenges

class LC_704Tests: XCTestCase {
    
    func test_example_one() {
        let sut = makeSut(with: [-1,0,3,5,9,12], searchingFor: 9)
        XCTAssertEqual(sut, 4, "Expected 9 to be found at index 4, got: \(sut)")
    }
    
    func test_example_two() {
        let sut = makeSut(with: [-1,0,3,5,9,12], searchingFor: 2)
        XCTAssertEqual(sut, -1, "Expected 2 not to be found, got: \(sut)")
    }

    private func makeSut(with collection: [Int], searchingFor target: Int) -> Int {
        LC704().search(collection, target)
    }
}
