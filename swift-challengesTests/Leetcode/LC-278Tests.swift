import XCTest
@testable import swift_challenges

class LC_278Tests: XCTestCase {
    
    func test_example_one() {
        let badVersion = 4
        let sut = makeSut(badVersion: badVersion, numberOfVersions: 5)
        XCTAssertEqual(sut, badVersion, "Expected first bad version to be \(badVersion) got \(sut)")
    }
    
    func test_example_two() {
        let badVersion = 1
        let sut = makeSut(badVersion: badVersion, numberOfVersions: 1)
        XCTAssertEqual(sut, badVersion, "Expected first bad version to be \(badVersion) got \(sut)")
    }

    func test_example_three() {
        let badVersion = 3
        let sut = makeSut(badVersion: badVersion, numberOfVersions: 2)
        XCTAssertEqual(sut, badVersion, "Expected first bad version to be \(badVersion) got \(sut)")
    }
    
    func makeSut(badVersion: Int, numberOfVersions: Int) -> Int {
        let solution = LC278()
        solution.isBadVersion = { $0 == badVersion }
        
        return solution.firstBadVersion(numberOfVersions)
    }
}
