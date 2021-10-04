import Foundation

/// 1295. Find Numbers with Even Number of Digits
/// https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
///
/// Time Complexity: O(n)
/// Space Complexity: O(n)

class LC1295 {
    func findNumbers(_ nums: [Int]) -> Int {
        var result = 0
        
        for num in nums {
            if isEven(num) { result += 1}
        }
        
        return result
    }
    
    private func isEven(_ num: Int) -> Bool {
        Int(log10(Double(num)) + 1) % 2 == 0
    }
}
