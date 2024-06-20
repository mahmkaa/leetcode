func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 1
    var k = 0
    
    while index < nums.count {
        if nums[index] == nums[index - 1]{
            nums.remove(at: index)
        } else {
            index += 1
        }
    }
    
    k = nums.count
    return k
}

var nums = [1,1,2]
removeDuplicates(&nums)
print("\(nums)")
