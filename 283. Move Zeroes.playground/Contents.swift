func moveZeroes(_ nums: inout [Int]) {
    var removedCount = 0
    nums.removeAll { element in
        if element == 0 {
            removedCount += 1
            return true
        } else {
            return false
        }
    }
    
    nums.append(contentsOf: Array(repeating: 0, count: removedCount))
}

var nums = [0]
moveZeroes(&nums)
