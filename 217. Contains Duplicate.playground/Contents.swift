func containsDuplicate(_ nums: [Int]) -> Bool {
    var result = false
    var seen: Set<Int> = []
    
    for num in nums {
        if seen.contains(num) {
            result = true
            break
        } else {
            seen.insert(num)
        }
    }
    
    return result
}

var nums = [0,1,2,3,1]
var nums1 = [0,1,2,3]

func findNumber(_ array: [Int], _ number: Int) -> Int? {
    for (index, value) in array.enumerated() {
        if value == number {
            return index
        }
    }
    return nil
}

findNumber(nums, 1)
containsDuplicate(nums1)
