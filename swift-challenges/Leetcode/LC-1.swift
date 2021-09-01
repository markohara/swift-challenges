import Foundation

/// Two Sum
/// https://leetcode.com/problems/two-sum/
///
/// Time Complexity: O(n)
/// Space Complexity: O(n)

class LC1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var cache = [Int: Int]()
        
        for (pos, val) in nums.enumerated() {
            let compliment = target - val
            
            if let compPos = cache[compliment] {
                return [compPos, pos]
            }
            
            cache[val] = pos
        }
        
        return [-1, -1]
    }
}
