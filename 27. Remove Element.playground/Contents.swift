func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    let count = nums.count
    nums.removeAll { $0 == val }
    let numsCount = nums.count
    return numsCount
}

var nums = [0,1,2,2,3,0,4,2]
removeElement(&nums, 2)
nums
