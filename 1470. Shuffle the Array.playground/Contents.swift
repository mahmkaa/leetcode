func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    let nums1 = Array(nums.prefix(n))
    let nums2 = Array(nums.suffix(n))
    var mergedArray: [Int] = []
    
    for i in 0..<n {
        if i < nums1.count {
            mergedArray.append(nums1[i])
        }
        if i < nums2.count {
            mergedArray.append(nums2[i])
        }    }
    
    return mergedArray
}

var nums = [1,2,3,4]
shuffle(nums, 2)
