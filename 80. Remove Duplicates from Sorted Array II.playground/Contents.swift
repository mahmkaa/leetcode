func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 2
    var k = 0
    
    while index < nums.count {
        if nums[index] == nums[index - 2]{
            nums.remove(at: index)
        } else {
            index += 1
        }
    }
    
    k = nums.count
    return k
}

var nums = [1,1,2,2,2,3,4,4,4,5,6,6,6]
removeDuplicates(&nums)
print("\(nums)")
