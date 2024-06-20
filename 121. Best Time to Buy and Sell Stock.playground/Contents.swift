func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count > 1 else {
        return 0
    }
    
    var minPrice = Int.max
    var maxProfit = 0
    
    for price in prices {
        if price < minPrice {
            minPrice = price
        } else if price - minPrice > maxProfit {
            maxProfit = price - minPrice
        }
    }
    
    return maxProfit
}


var nums = [7,6,4,3,1]
var nums1 = [2,4,1]
maxProfit(nums1)
