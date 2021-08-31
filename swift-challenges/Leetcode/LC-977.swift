import Foundation

/// Squares of a Sorted Array
/// https://leetcode.com/problems/squares-of-a-sorted-array/
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)

class LC997 {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        nums.map{ Int(pow(Double($0), 2)) }.sorted(by: <)
    }
}
