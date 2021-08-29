import Foundation

/// Leetcode 704 - Binary Search
/// https://leetcode.com/problems/binary-search/
class LC704 {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var head = 0
        var tail = nums.count - 1
        
        while head <= tail {
            let pivot = (tail + head) / 2
            let current = nums[pivot]
            
            switch current {
            case target:
                return pivot
            case let val where val < target:
                head = pivot + 1
            case let val where val > target:
                tail = pivot - 1
            default:
                continue
            }
        }
        
        return -1
    }
}
