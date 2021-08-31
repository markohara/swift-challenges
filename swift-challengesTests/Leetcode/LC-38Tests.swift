import XCTest
@testable import class swift_challenges.LC38

class LC_38Tests: XCTestCase {

    func test_example_one() {
        let sut = makeSut(collection: [1,3,5,6], target: 5)
        let expected = 2
        
        XCTAssertEqual(expected, sut, "expected target element to be at \(expected) got \(sut)")
    }
    
    func test_example_two() {
        let sut = makeSut(collection: [1,3,5,6], target: 2)
        let expected = 1
        
        XCTAssertEqual(expected, sut, "expected target element to be at \(expected) got \(sut)")
    }
    
    func test_example_three() {
        let sut = makeSut(collection: [1,3,5,6], target: 7)
        let expected = 4
        
        XCTAssertEqual(expected, sut, "expected target element to be at \(expected) got \(sut)")
    }
    
    func test_example_four() {
        let sut = makeSut(collection: [1,3,5,6], target: 0)
        let expected = 0
        
        XCTAssertEqual(expected, sut, "expected target element to be at \(expected) got \(sut)")
    }
    
    func test_example_five() {
        let sut = makeSut(collection: [1], target: 0)
        let expected = 0
        
        XCTAssertEqual(expected, sut, "expected target element to be at \(expected) got \(sut)")
    }
    
    func makeSut(collection: [Int], target: Int) -> Int {
        LC38().searchInsert(collection, target)
    }
}
