func getConcatenation(_ nums: [Int]) -> [Int] {
    var numsX2 = nums + nums
    return numsX2
}
var nums = [1,2,3,4]
var nums2 = nums + nums
getConcatenation(nums)
