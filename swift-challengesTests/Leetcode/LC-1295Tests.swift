import XCTest
@testable import swift_challenges

class LC_1295Tests: XCTestCase {
    
    func test_example_one() {
        let sut = makeSut(nums: [12,345,2,6,7896])
        let expected = 2
        
        XCTAssertEqual(expected, sut, "Expected a sum of \(expected) got \(sut)")
    }
    
    func test_example_two() {
        let sut = makeSut(nums: [555,901,482,1771])
        let expected = 1
        
        XCTAssertEqual(expected, sut, "Expected a sum of \(expected) got \(sut)")
    }

    private func makeSut(nums: [Int]) -> Int {
        LC1295().findNumbers(nums)
    }
}
