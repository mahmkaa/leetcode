func reverse(_ x: Int) -> Int {
    if x <= Int(Int32.min) && x >= Int(Int32.max) {
        return 0
    } else if x > 0 {
        let reverse = String(String(x).reversed())
        let intReverse = Int(reverse)!
        if intReverse <= Int(Int32.max) {
            return intReverse
        } else {
            return 0
        }
    } else {
        let plusX = x * -1
        let reverse = String(String(plusX).reversed())
        let intReverse = Int(reverse)!
        if intReverse <= Int(Int32.max) {
            return intReverse * -1
        } else {
            return 0
        }
    }
}

var x = -1532324234234234
reverse(x)
