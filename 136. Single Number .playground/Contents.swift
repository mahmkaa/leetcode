func singleNumber(_ nums: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    
    for num in nums {
        counts[num, default: 0] += 1
    }
    
    let result = nums.filter { counts[$0] == 1 }
    let number = result[0]
    return number
}

var nums = [2,2,1]
singleNumber(nums)
