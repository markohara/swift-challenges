import Foundation

/// Search Insert Position
/// https://leetcode.com/problems/search-insert-position/
///
/// Time Complexity: O(log n)
/// Space Complexity: O(1)

class LC38 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var head = 0
        var tail = nums.count - 1
        
        while head <= tail {
            let pivot = (head + tail) / 2
            let current = nums[pivot]
            
            if current == target {
                return pivot
            } else if current < target {
                head = pivot + 1
            } else if current > target {
                tail = pivot - 1
            }
        }
        
        return head
    }
}
