func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var sum = nums1 + nums2
    let sortedSum = sum.sorted()
    let count = sum.count
    
    if count % 2 == 1 {
        return Double(sortedSum[count / 2])
    } else {
        let sumMid = sortedSum[count / 2 - 1] + sortedSum[count / 2]
        return (Double(sumMid) / 2.0)
    }
}

var nums1 = [1,3]
var nums2 = [2]

findMedianSortedArrays(nums1, nums2)

