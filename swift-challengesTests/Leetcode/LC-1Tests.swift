import XCTest
@testable import swift_challenges

class LC_1Tests: XCTestCase {
    
    func test_example_one() {
        let sut = makeSut(collection: [2,7,11,15], target: 9)
        let expected = [0,1]
        
        XCTAssertEqual(expected, sut, "Expected a sum of 9 from positions \(expected) got \(sut)")
    }
    
    func test_example_two() {
        let sut = makeSut(collection: [3,2,4], target: 6)
        let expected = [1,2]
        
        XCTAssertEqual(expected, sut, "Expected a sum of 6 from positions \(expected) got \(sut)")
    }
    
    func test_example_three() {
        let sut = makeSut(collection: [3,3], target: 6)
        let expected = [0,1]
        
        XCTAssertEqual(expected, sut, "Expected a sum of 6 from positions \(expected) got \(sut)")
    }

    func makeSut(collection: [Int], target: Int) -> [Int] {
        LC1().twoSum(collection, target)
    }
}
