func merge(_ array1: inout [Int], _ m: Int, _ array2: [Int], _ n: Int) {
    var nums1 = Array(array1.prefix(m))
    var nums2 = Array(array2.prefix(n))
    
    let mergedArray = nums1 + nums2
    array1 = mergedArray.sorted()
}

var nums1 = [1,2,3,0,0,0]
var nums2 = [2,5,6]

let first = Array(nums1.prefix(3))
let first1 = Array(nums2.prefix(0))

var sum = first + first1

merge(&nums1, 3, nums2, 3)
