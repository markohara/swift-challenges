import Foundation

/// First Bad Version
/// https://leetcode.com/problems/first-bad-version/
///
/// Time Complexity: O(log n)
/// Space Complexity: O(1)

class LC278: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var head = 1; var tail = n
                
        while head <= tail {
            let pivot = (head + tail) / 2
            
            if isBadVersion(pivot) {
                tail = pivot - 1
            } else {
                head = pivot + 1
            }
        }
        
        return head
    }
}

class VersionControl {
    var isBadVersion: ((Int) -> Bool)!
}
