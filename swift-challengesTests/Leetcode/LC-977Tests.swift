import XCTest
@testable import swift_challenges

class LC_977Tests: XCTestCase {

    func test_example_one() {
        let sut = makeSut(collection: [-4,-1,0,3,10])
        let expected = [0,1,9,16,100]
        
        XCTAssertEqual(expected, sut, "Expected \(expected) got \(sut)")
    }
    
    func test_example_two() {
        let sut = makeSut(collection: [-7,-3,2,3,11])
        let expected = [4,9,9,49,121]
        
        XCTAssertEqual(expected, sut, "Expected \(expected) got \(sut)")
    }
    
    func makeSut(collection: [Int]) -> [Int] {
        LC997().sortedSquares(collection)
    }
}
