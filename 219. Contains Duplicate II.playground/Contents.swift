func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var numIndexMap: [Int: Int] = [:]
    
    for i in 0..<nums.count {
        let num = nums[i]
        
        if let index = numIndexMap[num], i - index <= k {
            return true
        }
        
        numIndexMap[num] = i
    }
    
    return false
}


var nums = [1,2,3,1,2,3], k = 2
containsNearbyDuplicate(nums, k)
