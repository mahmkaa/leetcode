public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func insert(_ root: TreeNode?, _ value: Int) -> TreeNode? {
    guard let root = root else {
        return TreeNode(value)
    }
    
    if value < root.val {
        root.left = insert(root.left, value)
    } else {
        root.right = insert(root.right, value)
    }
    
    return root
}

func arrayToBST(_ nums: [Int]) -> TreeNode? {
    func sortedArrayToBSTHelper(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
            if start > end {
                return nil
            }
            
            let mid = (start + end) / 2
            let root = TreeNode(nums[mid])
            root.left = sortedArrayToBSTHelper(nums, start, mid - 1)
            root.right = sortedArrayToBSTHelper(nums, mid + 1, end)
            return root
        }
        
        return sortedArrayToBSTHelper(nums, 0, nums.count - 1)
}

var nums = [-10,-3,0,5,9]
arrayToBST(nums)
